local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local ball = Instance.new("Part")
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(2, 2, 2)
ball.Color = Color3.new(1, 0, 0)

local offset = Vector3.new(0, 0, -5)
local headPos = character.Head.CFrame.p
local headForward = character.Head.CFrame.LookVector

ball.CFrame = CFrame.new(headPos + headForward * offset, headPos + headForward * offset)
ball.Parent = game.Workspace
