---------------------------------------------------------------
-- main.lua 	main program for Attribute Blocks
---------------------------------------------------------------

--change the path below to the lib directory
--local lib =  "C:\\Users\\cjmar\\Documents\\SHARED\\Software Engineering\\Learning Modules\\AttributeBlocks\\lib\\"
--local lib =  ".\\lib\\" --trying to get this to work
package.path = lib .. "?.lua;" .. package.path
local useShapes = require "Shapes"

local xres = 1125 --iphonex x-resolution
local yres = 2436 --iphonex y-resolution
local background = display.newImageRect( ".\\images\\spacebackground1.jpg", xres, yres )
background.x = display.contentCenterX
background.y = display.contentCenterY
local moon = display.newImage( ".\\images\\moon.png", 675, 675  ) 
moon.x = display.contentCenterX
moon.y = display.contentCenterY
useShapes.start()





--display text (need to figure out how to turn sideways)
local makeText = display.newText( "Place Objects on moon", display.contentCenterX, 500, native.systemFont, 100 )






















--[[ 	Trash -- many have been cut and pasted and are not in correct order
--------------------------------------------------------------------------
local tapCount = 0


tapText:setFillColor( 0, 0, 0 )

local platform = display.newImageRect( "platform.png", xres - 100, 450 )
platform.x = display.contentCenterX
platform.y = display.contentHeight-25



local physics = require( "physics" )
physics.start()

physics.addBody( platform, "static" )
--bounce is what fraction of original height the baloon will bounce back to
physics.addBody( balloon, "dynamic", { radius=175, bounce=0.3 } )

--local balloon = display.newImageRect( ".\images\balloon.png", 200, 660)
--balloon.x = display.contentCenterX + 75
--balloon.y = display.contentCenterY
--balloon.alpha = 0.8 --opacity(transparency)

local function pushBalloon()
	balloon:applyLinearImpulse( 0, -3, balloon.x, balloon.y )
	tapCount = tapCount + 1
	tapText.text = tapCount
end

balloon:addEventListener( "tap", pushBalloon )

---------------------------------------------------------------------------------
--
--Define a space to move the object throughout the screen
local board = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
board:setStrokeColor(255,255,255)    -- Set the board color
 

local physics = require("physics")
physics.start()
physics.addBody(circleObj, "static")
 
--Function that move the circle
function moveCircle( event )  
	if math.abs(event.x - circleObj.x) < 65 and math.abs(event.y - circleObj.y) < 65 then
         -- Set the cordinates of the circle                     
         circleObj .x = event.x
	 circleObj .y = event.y
 end
    return true
end
 
--Touch event that will fired when we will touch the screen

--
--------------------------------------------------------------------
function Shapes.moveShape( event )  
	local object = event.target
--	local closestObject = Shapes.findClosestObj( event.x, event.y )
--	local touchRadius = 100 --how far from center of object it can be moved with

--	if math.abs( event.x - shapeToMove.x ) < touchRadius and math.abs(event.y - shapeToMove.y) < touchRadius then
--		-- update objects position to event location                     
		object.x = event.x
		object.y = event.y
--	end
	print("test")
end
function Shapes.findClosestObj( eventX, eventY )  	
	
	local distance
	local closestIndex
	
	if table.getn(currentShapes) == 0 then
		return false
	else
		distance = math.abs(currentShapes[0].x - eventX) + math.abs(currentShapes[0].y - eventY)
	end
	for i=0, table.getn(currentShapes) - 1 do
		print(i)
		if (math.abs(currentShapes(i).x - eventX) + math.abs(currentShapes(i).y - eventY)) < distance then
			closestIndex = i
		end
	end
	return currentShapes[closestIndex]
end
--]]
