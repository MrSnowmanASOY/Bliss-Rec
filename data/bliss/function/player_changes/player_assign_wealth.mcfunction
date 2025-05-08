tag @s remove astra_player
tag @s remove fire_player
tag @s remove gust_player
tag @s remove heart_player
tag @s remove pulse_player
tag @s remove speed_player
tag @s remove strength_player

tag @s add wealth_player
tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Wealth Shard"}]

execute as @s[tag=wealth_player] run function bliss:shards/give_shard/wealth