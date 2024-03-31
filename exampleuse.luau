local DynamicEngine = require(path.to.module)

game.Players.PlayerAdded:Connect(function(Player)
    local DynamicPlayer = DynamicEngine.new(Player)
    -- The rest of your code
end)

game.Players.PlayerRemoving:Connect(function(Player)
    if DynamicEngine:GetDynamicPlayer(Player.Name) then
      DynamicEngine:Remove(Player.Name)
    end
    -- The rest of your code
end)
