local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LocalPlayer = Players:CreateLocalPlayer(%PLAYERID%)

LocalPlayer.CharacterAppearance = "http://%SITE%/users/%PLAYERID%/character?tick=" .. tick()

LocalPlayer.CharacterAdded:connect(function(character)
    repeat wait() until character:FindFirstChild("Humanoid")
    local humanoid = character:FindFirstChild("Humanoid")

    humanoid.Died:connect(function()
        wait(5)
        LocalPlayer:LoadCharacter()
    end)
end)

RunService:Run()
LocalPlayer:LoadCharacter()