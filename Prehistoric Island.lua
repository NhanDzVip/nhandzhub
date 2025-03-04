local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

-- Kiểm tra xem Đảo Tiền Sử có trong server không
local function findTikiIsland()
    for _, island in pairs(Workspace:GetChildren()) do
        if island:IsA("Model") and island.Name == "Tiki Island" then
            print("✅ Đảo Tiền Sử đã xuất hiện!")
            return island
        end
    end
    print("❌ Không tìm thấy Đảo Tiền Sử, hop server...")
    return nil
end

-- Lấy danh sách server để hop
local function getServers()
    local url = "https://games.roblox.com/v1/games/2753915549/servers/Public?sortOrder=Asc&limit=100"
    local response = HttpService:GetAsync(url)
    local data = HttpService:JSONDecode(response)

    for _, server in pairs(data.data) do
        if server.playing < server.maxPlayers then
            return server.id
        end
    end
    return nil
end

-- Tự động hop server
local function hopServer()
    local serverId = getServers()
    if serverId then
        print("🔄 Đang chuyển sang server mới...")
        TeleportService:TeleportToPlaceInstance(2753915549, serverId, Players.LocalPlayer)
    else
        print("❌ Không tìm thấy server phù hợp, thử lại sau!")
    end
end

-- Teleport đến Đảo Tiền Sử
local function teleportToIsland(island)
    if island and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        print("🚀 Đang teleport đến Đảo Tiền Sử...")
        player.Character.HumanoidRootPart.CFrame = island.PrimaryPart.CFrame + Vector3.new(0, 10, 0) -- Bay lên một chút để tránh mắc kẹt
    else
        print("⚠️ Không thể teleport, thử lại...")
    end
end

-- Chạy script: kiểm tra đảo, teleport hoặc hop server
local island = findTikiIsland()
if island then
    teleportToIsland(island)
else
    hopServer()
end
