tag @s remove astra_player
tag @s remove fire_player
tag @s remove gust_player
tag @s remove heart_player
tag @s remove pulse_player
tag @s remove speed_player
tag @s remove strength_player
tag @s remove wealth_player

execute if score random-8 Timer matches 1 run tag @s add astra_player
execute if score random-8 Timer matches 1 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Astra Shard"}]
execute if score random-8 Timer matches 2 run tag @s add fire_player
execute if score random-8 Timer matches 2 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Fire Shard"}]
execute if score random-8 Timer matches 3 run tag @s add gust_player
execute if score random-8 Timer matches 3 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Gust Shard"}]
execute if score random-8 Timer matches 4 run tag @s add heart_player
execute if score random-8 Timer matches 4 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Heart Shard"}]
execute if score random-8 Timer matches 5 run tag @s add pulse_player
execute if score random-8 Timer matches 5 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Pulse Shard"}]
execute if score random-8 Timer matches 6 run tag @s add speed_player
execute if score random-8 Timer matches 6 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Speed Shard"}]
execute if score random-8 Timer matches 7 run tag @s add strength_player
execute if score random-8 Timer matches 7 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Strength Shard"}]
execute if score random-8 Timer matches 8 run tag @s add wealth_player
execute if score random-8 Timer matches 8 run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#1100ff","text":"[Player-Assignment]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Player Assigned to Wealth Shard"}]

execute as @s[tag=astra_player] run function bliss:shards/give_shard/astra
execute as @s[tag=fire_player] run function bliss:shards/give_shard/fire
execute as @s[tag=gust_player] run function bliss:shards/give_shard/gust
execute as @s[tag=heart_player] run function bliss:shards/give_shard/heart
execute as @s[tag=pulse_player] run function bliss:shards/give_shard/pulse
execute as @s[tag=speed_player] run function bliss:shards/give_shard/speed
execute as @s[tag=strength_player] run function bliss:shards/give_shard/strength
execute as @s[tag=wealth_player] run function bliss:shards/give_shard/wealth