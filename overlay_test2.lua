----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local ui = require( "widget" )

----------------------------------------------------------------------------------
-- 
--	NOTE:
--	
--	Code outside of listener functions (below) will only be executed once,
--	unless storyboard.removeScene() is called.
-- 
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:createScene( event )

    --get params from last scene
    --local params = event.params

    --print( params.var1 )    -- "custom data"
    --print( params.sample_var )  -- 123

	local screenGroup = self.view
	local image = display.newImage( "background.png" )	
	screenGroup:insert( image )

	--local button1 = display.newImage( "button1.png" )
	--button1.x = display.contentWidth * 0.5 - button1.width
	--button1.y = display.contentWidth * 0.5 - button1.width
	--screenGroup:insert( button1 )
        
        local button1Press = function( event )
            storyboard.hideOverlay( "fade", 800 )
            --storyboard.hideOverlay( true, "fade" )

        end

        button_test1 = ui.newButton{
        default = "1A.png",
        id = "table_01",
        --over = "button1_hover.png",
        --over = "button1_hover.png",
        --x = 200,
        --y = 240,
	    --onPress = button1Press
	    onRelease = button1Press,
        }




        button_test1.x, button_test1.y= display.contentWidth / 9 * 1 ,display.contentHeight / 15 * 10 --where 1 is the position

        
        screenGroup:insert( button_test1 )


        print "\n\nCREATE OVERLAY SCENE WAS TRIGGERED!\n\n"

        
        

	-----------------------------------------------------------------------------
		
	--	CREATE display objects and add them to 'group' here.
	--	Example use-case: Restore 'group' from previously saved state.
	
	-----------------------------------------------------------------------------
	
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. remove listeners, widgets, save state, etc.)
	
	-----------------------------------------------------------------------------
	
end

---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene