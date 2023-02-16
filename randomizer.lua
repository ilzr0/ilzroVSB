local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local ball = Instance.new("Part")
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(2, 2, 2)
ball.Color = Color3.new(1, 0, 0)
ball.Position = character.Head.CFrame:ToWorldSpace(Vector3.new(0, 0, -5))

ball.Parent = game.Workspace
