Data = {}
local config = require '@config.shared'

RegisterNetEvent('am-dispatch:client:toggleMenu')
AddEventHandler('am-dispatch:client:toggleMenu', function()
    ToggleDispatch()
end)

local toggleMenu = lib.addKeybind({
    name = 'dispatch_toggleMenu',
    description = 'Turn On / Off the dispatch menu',
    defaultKey = config.openMenu.keybind,
    onPressed = function(self)
        ToggleDispatch()
    end,
})

local showNext = lib.addKeybind({
    name = 'dispatch_showNext',
    description = 'Show next dispatch',
    defaultKey = config.menuInteracts.nextKeybind,
    onPressed = function(self)
        ShowNext()
    end,
})

local showPrevious = lib.addKeybind({
    name = 'dispatch_showPrevoius',
    description = 'Show previus dispatch',
    defaultKey = config.menuInteracts.previousKeybind,
    onPressed = function(self)
        ShowPrevious()
    end,
})