local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()

local craftingRemote = ReplicatedStorage.GameEvents.CraftingGlobalObjectService
local craftingEvent = workspace.Interaction.UpdateItems.NewCrafting.EventCraftingWorkBench

-- Equip a tool from backpack by name pattern
local function equipTool(pattern)
    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name:match(pattern) then
            tool.Parent = character
            print("✅ Equipped:", tool.Name)
            return tool
        end
    end
    warn("❌ Could not find tool:", pattern)
    return nil
end

-- Get UUID from attribute named "c"
local function getUUID(tool)
    local uuid = tool:GetAttribute("c")
    if uuid then
        return uuid
    else
        warn("❌ UUID attribute 'c' not found on tool:", tool.Name)
        return nil
    end
end

-- Fire InputItem for given tool
local function inputItem(tool, slotIndex, itemType)
    local uuid = getUUID(tool)
    if not uuid then return end

    local args = {
        "InputItem",
        craftingEvent,
        "GearEventWorkbench",
        slotIndex,
        {
            ItemType = itemType,
            ItemData = {
                UUID = uuid
            }
        }
    }

    craftingRemote:FireServer(unpack(args))
    print("📤 InputItem sent for", tool.Name)
end

-- Auto claim crafted item
local function autoClaim()
    local args = {
        "Claim",
        craftingEvent,
        "GearEventWorkbench",
        1
    }
    craftingRemote:FireServer(unpack(args))
    print("🎁 Claimed crafted item!")
end

-- Main sequence
local function autoCraft()
    -- Equip and input Cacao
    local cacaoTool = equipTool("^Cacao")
    if not cacaoTool then return end
    wait(0.5)

    craftingRemote:FireServer("SetRecipe", craftingEvent, "GearEventWorkbench", "Mutation Spray Choc")
    print("🧪 SetRecipe: Mutation Spray Choc")
    wait(0.5)

    inputItem(cacaoTool, 2, "Holdable") -- Slot 2 for Cacao
    wait(0.5)

    -- Equip and input Cleaning Spray
    local sprayTool = equipTool("^Cleaning Spray")
    if not sprayTool then return end
    wait(0.5)

    inputItem(sprayTool, 1, "SprayBottle") -- Slot 1 for Cleaning Spray
    wait(0.5)

    -- Craft
    craftingRemote:FireServer("Craft", craftingEvent, "GearEventWorkbench")
    print("🎉 Crafting Complete!")
    wait(1)

    -- Claim
    autoClaim()
end

autoCraft()
