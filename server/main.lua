local config = require '@config.shared'
local Dispatches = {}

lib.addCommand(config.openMenu.command, {
    help = 'Gives an item to a player',
}, function(source, args, raw)
    TriggerClientEvent('am-dispatch:client:toggleMenu', source)
end)