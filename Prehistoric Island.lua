getgenv().MirageIsland = function()
    local url = 'https://andepzaihub.onrender.com/api/status'
    local chooses
    local foundServers = game:GetService('HttpService'):JSONDecode(game:HttpGet(url))
    for i,v in foundServers do 
        if v.jobId ~= game.JobId then 
            chooses = v
        end
    end
    game:GetService("TeleportService"):TeleportToPlaceInstance(7449423635, chooses.jobId, game.Players.LocalPlayer)
end
function CheckIsland()
    for _,Island in pairs(game.Workspace.Enemies:GetChildren()) do
        if Island.Name == "Mirage Island" or Boss.Name == "Prehistoric island" and DetectingPart(Island) and Island.Humanoid.Health > 0 then
            return Island
        end
    end
    for _,Island in pairs(game.ReplicatedStorage:GetChildren()) do
        if Island.Name == "Mirage Island" or Island.Name == "Prehistoric island" then
            return Island
        end
    end
end
function DetectingPart(v1)
    return v1 and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid")
end
spawn(function()
  while task.wait() do
    pcall(function()
      if not CheckIsland() then
        return Prehistoric Island()
      end
    end)
  end
end)     
