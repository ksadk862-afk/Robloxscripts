print("SUCCESS: Your GitHub script is running on the server!")

-- Simple server-side command example
game.Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " has joined your backdoored game!")
end)
