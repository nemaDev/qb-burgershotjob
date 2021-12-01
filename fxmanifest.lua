fx_version 'cerulean'
game 'gta5'

author 'DrB1ackBeard'
description 'qb-burgershotjob for QBCore Adapted By McKlean'
version '2.2.0'

shared_scripts {
    'config.lua',
    '@qb-core/import.lua'
}

client_scripts {
	'client/main.lua',
	'client/garage.lua',
	'client/menus.lua'
}

server_script 'server/*.lua'
