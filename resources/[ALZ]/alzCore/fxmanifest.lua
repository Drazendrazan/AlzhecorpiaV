fx_version 'cerulean'
game 'gta5'
author 'Alzhe + all devs worked on all scripts.'
description 'Resource principale travaillée et importée par Alzhe'
version '1'

client_script 'cl/*.lua'
server_script 'sv/*.lua'

data_file'GTXD_PARENTING_DATA' 'client/hud/mapzoomdata.meta' -- HUD
data_file 'DLC_POP_GROUPS' 'popgroups.ymt'

-- START OF loadingscreen
files {
    'load/index.html',
    'load/keks.css',
    'load/bankgothic.ttf',
    'load/loadscreen.jpg',
    'load/martiallaw.mp3',
    'popgroups.ymt'
}

loadscreen 'load/index.html'
-- END OF loadingscreen