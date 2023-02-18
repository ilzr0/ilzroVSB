local player = game.Players.latexify
local character = player.Character or player.CharacterAdded:Wait()
local current = "none"

local head = character:FindFirstChild("Head")
if head then
    local ball = Instance.new("Part")
    ball.Shape = Enum.PartType.Ball
    ball.Size = Vector3.new(4, 4, 4)
    ball.Position = head.Position + head.CFrame.LookVector * 5

    local clickDetector = Instance.new("ClickDetector")
    clickDetector.Parent = ball
    clickDetector.MouseClick:Connect(function()
        print("cap")
        local random = math.random(1,1)
        if random == 1 and current ~= "sparkles" then
            ball.Color = Color3.new(0.6862745098,0.2156862745,0.9019607843)
            local effect = Instance.new("Sparkles")
            effect.Parent = ball
            current = "sparkles"
        end
    end)

    ball.Parent = game.Workspace
end
