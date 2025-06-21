local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()

local craftingRemote = ReplicatedStorage.GameEvents.CraftingGlobalObjectService
local craftingEvent = workspace.Interaction.UpdateItems.NewCrafting.EventCraftingWorkBench

local CRAFT_WAIT_TIME = 3 -- seconds to wait for crafting to finish (adjust if needed)

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

local function getUUID(tool)
    return tool:GetAttribute("c")
end

local function inputItem(tool, slotIndex, itemType)
    local uuid = getUUID(tool)
    if not uuid then
        warn("❌ UUID missing for:", tool.Name)
        return false
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
    return true
end

local function setRecipe(recipeName)
    craftingRemote:FireServer("SetRecipe", craftingEvent, "GearEventWorkbench", recipeName)
    print("🧪 Recipe set:", recipeName)
end

local function craftItem()
    craftingRemote:FireServer("Craft", craftingEvent, "GearEventWorkbench")
    print("🛠️ Crafting started...")
end

local function claimItem()
    local args = {
        "Claim",
        craftingEvent,
        "GearEventWorkbench",
        1
    }
    craftingRemote:FireServer(unpack(args))
    print("🎁 Claimed crafted item!")
end

local function countSeedPacks()
    local count = 0
    for _, item in ipairs(backpack:GetChildren()) do
        if item.Name == "Crafters Seed Pack" then
            count = count + 1
        end
    end
    return count
end

local function waitForNewSeedPack(oldCount)
    print("⏳ Waiting for new 'Crafters Seed Pack'...")
    while true do
        local currentCount = countSeedPacks()
        if currentCount > oldCount then
            print("✅ New 'Crafters Seed Pack' detected!")
            break
        end
        wait(1) -- check every second, adjust if needed
    end
end

local function autoCraftLoop()
    local lastSeedPackCount = countSeedPacks()

    while true do
        print("🔄 Starting new craft cycle")

        -- Equip Cacao
        local cacao = equipTool("^Cacao")
        if not cacao then return end
        wait(0.4)

        setRecipe("Mutation Spray Choc")
        wait(0.4)

        if not inputItem(cacao, 2, "Holdable") then return end
        wait(0.4)

        -- Equip Cleaning Spray
        local spray = equipTool("^Cleaning Spray")
        if not spray then return end
        wait(0.4)

        if not inputItem(spray, 1, "SprayBottle") then return end
        wait(0.4)

        craftItem()
        wait(CRAFT_WAIT_TIME)

        claimItem()
        wait(0.4)

        -- Wait for new "Crafters Seed Pack" before next cycle
        waitForNewSeedPack(lastSeedPackCount)
        lastSeedPackCount = countSeedPacks()
    end
end

autoCraftLoop()
