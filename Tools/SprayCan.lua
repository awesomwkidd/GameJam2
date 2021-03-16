--[[
-=- Created by awesomwkidd -=-

The script handeler for the spray can tool!
]]


--//Variables

--// Script doesn't start till the local player is found
repeat wait() until game.Players.LocalPlayer

local player = game.Players.LocalPlayer
local chr = player.Character
local mouse = player:GetMouse()
local tool = script.Parent

--//Keybinds 
mouse.KeyDown:Connect(function(key)
    if key == "e" then
      
   --// Firing the spray event without name, making it easier on me lol
        for __, val in pairs(script.Parent:WaitForChild("SprayEvents"):GetChildren()) do
           if val.ClassName == "RemoteEvent" then
              val:FireServer()
           end
        end
    end
end

