-- Your ID
local myId = "rbxassetid://92485733858087"

-- 1. SERVER MESSAGE (Shows at the top of the screen)
local msg = Instance.new("Hint")
msg.Parent = workspace
msg.Text = "Rusut fu## this game"

-- 2. APPLY SKYBOX
local lighting = game:GetService("Lighting")
local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", lighting)

sky.SkyboxBk = myId
sky.SkyboxDn = myId
sky.SkyboxFt = myId
sky.SkyboxLf = myId
sky.SkyboxRt = myId
sky.SkyboxUp = myId

-- 3. APPLY FLOOR DECAL
for _, part in pairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and part.Name == "Baseplate" then
        local texture = part:FindFirstChildOfClass("Texture") or Instance.new("Texture", part)
        texture.Texture = myId
        texture.Face = Enum.NormalId.Top
        texture.StudsPerTileU = 10
        texture.StudsPerTileV = 10
    end
end
