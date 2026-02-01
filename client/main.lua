local config = require '@config.shared'

RegisterNetEvent('am-dispatch:client:toggleMenu')
AddEventHandler('am-dispatch:client:toggleMenu', function()
    ToggleDispatch()
end)

local keybind = lib.addKeybind({
    name = 'dispatch_toggleMenu',
    description = 'Turn On / Off the dispatch menu',
    defaultKey = config.openMenu.keybind,
    onPressed = function(self)
        ToggleDispatch()
    end,
})