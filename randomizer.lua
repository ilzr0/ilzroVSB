local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local head = character:FindFirstChild("Head")
if head then
    local ball = Instance.new("Part")
    ball.Shape = Enum.PartType.Ball
    ball.Size = Vector3.new(2, 2, 2)
    ball.Color = Color3.new(1, 0, 0)
    ball.Position = head.Position + head.CFrame.LookVector * 5

    ball.Parent = game.Workspace
else
    character.ChildAdded:Connect(function(child)
        if child.Name == "Head" then
            local ball = Instance.new("Part")
            ball.Shape = Enum.PartType.Ball
            ball.Size = Vector3.new(10, 10, 10)
            ball.Color = Color3.new(1, 0, 0) -- this is real
            ball.Position = character.Head.Position + character.Head.CFrame.LookVector * 5

            ball.Parent = game.Workspace
        end
    end)
end
