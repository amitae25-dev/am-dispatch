fx_version 'cerulean'
lua54 'yes'
game 'gta5'

name "am-dispatch"
description "Dispatch Menu for Fivem Roleplay Servers"
author "Amitae"
version "1.0"

ui_page 'web/index.html'

shared_scripts {
	'config/shared.lua',
	'@ox_lib/init.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

files {
    'web/index.html',
    'web/styles.css',
    'web/script.js',
}