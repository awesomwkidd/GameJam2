--[[

-=- Created by awesomwkidd -=-

The NPC handler!

I've literally no clue if this works or not, i'm working on this in school, I'm hoping it works but we'll see once I get home.

]]
--//Variables
local workspace = game:GetService("Workspace")
local NPCLocation = workspace:FindFirstChild("NPCs")
local Boxes = workspace:FindFirstChild("Boxes")

--//Value for testing
local moveTo = true

--// List of NPCs
local NPCs = {
  John = NPCLocation:WaitForChild("John"),
  Principal = NPCLocation:WaitForChild("Principal")
}

--// List of parts that NPCs move to.
local Boxes = {
  --// Prinicpal boxes
  PrincipalBox1 = Boxes.Principal:FindFirstChild("PrincipalBox1"),
  
  --// John boxes
  JohnBox1 = Boxes.John:FindFirstChild("JohnBox1"),
}

local function NPCMoveTo(npcHum, objectToMove)
   npcHum:MoveTo(objectToMove)
end


--//Main
if moveTo == true then
   NPCMoveTo(NPCs.John, Boxes.JohnBox1)
else
   return moveTo
end


