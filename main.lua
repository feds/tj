local storyboard = require ("storyboard")

system.deactivate( "multitouch" )

system.setIdleTimer(false)

display.setStatusBar( display.HiddenStatusBar )
-- load first scene
local options =
{
    effect = "fade",
    time = 1000
    --Notes: Parameter passing to target scene example
    --params =
    --{
    --    var1 = "custom data",
    --    sample_var = 123,
    --}
}

storyboard.gotoScene( "main_menu", options)
--end storyboard