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
            return tool
        end
    end
    return nil
end

-- Fire InputItem for a tool
local function inputItem(tool, slotIndex, itemType)
    local uuid = tool:GetAttribute("c")
    if not uuid then return end

    local args = {
        "InputItem",
        craftingEvent,
        "GearEventWorkbench",
        slotIndex,
        {
            ItemType = itemType,
            ItemData = { UUID = uuid }
        }
    }

    craftingRemote:FireServer(unpack(args))
end

-- Fire SetRecipe
local function setRecipe(recipeName)
    craftingRemote:FireServer("SetRecipe", craftingEvent, "GearEventWorkbench", recipeName)
end

-- Fire Craft
local function craftItem()
    craftingRemote:FireServer("Craft", craftingEvent, "GearEventWorkbench")
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
end

-- Full sequence
local function autoCraft()
    -- Equip Cacao
    local cacao = equipTool("^Cacao")
    if not cacao then return end

    setRecipe("Mutation Spray Choc")
    inputItem(cacao, 2, "Holdable")

    -- Equip Cleaning Spray
    local spray = equipTool("^Cleaning Spray")
    if not spray then return end

    inputItem(spray, 1, "SprayBottle")

    -- Start crafting
    craftItem()

    -- Wait for crafting to finish (12 minutes and 5 seconds = 725 seconds)
    wait(725)

    -- Claim the crafted item after the specified time
    claimItem()
end

autoCraft()
