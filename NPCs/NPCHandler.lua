--[[

-=- Created by awesomwkidd -=-

The NPC handler!

I've literally no clue if this works or not, i'm working on this in school, I'm hoping it works but we'll see once I get home.

]]
--//Variables
local NPCLocation = workspace:FindFirstChild("NPCs")
local Boxes = workspace:FindFirstChild("Boxes")
local pathfindingService = game:GetService("PathfindingService")

--//Value for testing
local moveTo = true

--// List of NPCs
local John = NPCLocation:WaitForChild("John")
local Principal = NPCLocation:WaitForChild("Principal")

--// List of parts that NPCs move to.
local Boxes = {
	--// Prinicpal boxes
	PrincipalBox1 = Boxes.Principal:FindFirstChild("PrincipalBox1"),

	--// John boxes
	JohnBox1 = Boxes.John:FindFirstChild("JohnBox1"),
}

local function NPCMove(NPC, NPChum, destination)
	local humanoid = NPChum
	local body = NPC:FindFirstChild("HumanoidRootPart") or script.Parent:FindFirstChild("Torso")
	local destination = destination

	local path = pathfindingService:CreatePath()
	path:ComputeAsync(body.Position, destination)
	
	local waypoints = path:GetWaypoints()

	for __, waypoint in pairs(waypoints) do
		humanoid:MoveTo(waypoint.Position)

		if waypoint.Action == Enum.PathWaypointAction.Jump then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end

		humanoid.MoveToFinished:Wait()
	end
	
end

--//Main
if moveTo == true then
	NPCMove(John, John:WaitForChild("Humanoid"), Boxes.JohnBox1.Position)
else
	return moveTo
end


