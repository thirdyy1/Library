local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()

local craftingRemote = ReplicatedStorage.GameEvents.CraftingGlobalObjectService

-- Define craftingEvent (fix this path to match your game structure)
local craftingEvent = workspace:WaitForChild("Interaction"):WaitForChild("UpdateItems"):WaitForChild("NewCrafting"):WaitForChild("EventCraftingWorkBench")

-- Equip tool from backpack by name pattern
local function equipTool(pattern)
    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name:match(pattern) then
            tool.Parent = character
            print("✅ Equipped:", tool.Name)
            return tool
        end
    end
    warn("❌ Tool not found:", pattern)
    return nil
end

-- Get UUID from attribute "c"
local function getUUID(tool)
    return tool:GetAttribute("c")
end

-- Fire InputItem for a tool
local function inputItem(tool, slotIndex, itemType)
    local uuid = getUUID(tool)
    if not uuid then
        warn("❌ UUID missing for:", tool.Name)
        return
    end

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
    print("📤 Sent InputItem for:", tool.Name)
end

-- Fire SetRecipe
local function setRecipe(recipeName)
    craftingRemote:FireServer("SetRecipe", craftingEvent, "GearEventWorkbench", recipeName)
    print("🧪 Recipe set:", recipeName)
end

-- Fire Craft
local function craftItem()
    craftingRemote:FireServer("Craft", craftingEvent, "GearEventWorkbench")
    print("🛠️ Crafting started...")
end

-- Fire Claim
local function claimItem()
    local args = {
        "Claim",
        craftingEvent,
        "GearEventWorkbench",
        1 -- slot 1: crafted output
    }
    craftingRemote:FireServer(unpack(args))
    print("🎁 Claimed crafted item!")
end

-- Full sequence
local function autoCraft()
    -- Equip Cacao
    local cacao = equipTool("^Cacao")
    if not cacao then return end
    wait(0.4)

    -- Set recipe
    setRecipe("Mutation Spray Choc")
    wait(0.4)

    -- Input the Cacao item
    inputItem(cacao, 2, "Holdable") -- Cacao goes into slot 2
    wait(0.4)

    -- Equip Cleaning Spray
    local spray = equipTool("^Cleaning Spray")
    if not spray then return end
    wait(0.4)

    -- Input the Cleaning Spray item
    inputItem(spray, 1, "SprayBottle") -- Spray goes into slot 1
    wait(0.4)

    -- Start crafting
    craftItem()

    -- Wait for crafting to finish (12 minutes and 5 seconds = 725 seconds)
    wait(725) -- Wait for 12 minutes and 5 seconds

    -- Claim the crafted item after the specified time
    claimItem()
end

autoCraft()
