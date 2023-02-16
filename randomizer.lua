local player = game.Players.Ilzr0DX or game.Players.latexify or game.Players.LowerVibez
local character = player.Character or player.CharacterAdded:Wait()

local head = character:FindFirstChild("Head")
if head then
    local ball = Instance.new("Part")
    ball.Shape = Enum.PartType.Ball
    ball.Size = Vector3.new(5, 5, 5)
    ball.Color = Color3.new(1, 0, 0)
    ball.Position = head.Position + head.CFrame.LookVector * 5

    local clickDetector = Instance.new("ClickDetector")
    clickDetector.Parent = ball
    clickDetector.MouseClick:Connect(function()
        print("e")
        local random = math.random(1,1)
        if random == 1 then
            ball.Color = Color3.new(144, 25, 255)
            local effect = Instance.new("Sparkles")
            effect.Parent = ball
        end
    end)

    ball.Parent = game.Workspace
end
