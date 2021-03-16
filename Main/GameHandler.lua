local npcList = {
    
}

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(chr)
        
        --// Where values are held for in-game functions
        local dataValues = Instance.new("Folder")
        dataValues.Name = "Values"
        dataValues.Parent = player
        
        --// To check if player is wanted by school officials or not
        local wantedValue = Instance.new("BoolValue")
        wantedValue.Name = "Wanted"
        wantedValue.Value = false
        wantedValue.Parent = dataValues
        
        wantedValue.Changed:Connect(function()
            if wantedValue == true then
               
            elseif wantedValue == false then
               
            end
        end)
 
    end)
end)
