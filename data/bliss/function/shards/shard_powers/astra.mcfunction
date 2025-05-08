tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Astra Shard"}]

# Gem Description:
# Astra gem shoots 5 arrows that deal 2 hearts each
# Upgraded shoots 7 arrows that deal 1 hearts each 
# Downgraded shoots 3 arrows that deal 1 hearts each 

# uses the world origin point in place of the player so that world position can be translated to motion later
execute positioned 0.0 0 0.0 run summon marker ^ ^-8 ^4 {Tags:["direction"]}

# summon the projectile entity
# When using a projectile, you want to summon it in front of the player so it doesn't hit the player themselves
execute as @s at @s run execute positioned ~1 ~15 ~1 run summon arrow ^ ^ ^3 {Tags:["projectile1"],damage:2,PierceLevel:5,Glowing:true}
execute as @s at @s run execute positioned ~-1 ~15 ~-1 run summon arrow ^ ^ ^3 {Tags:["projectile2"],damage:2,PierceLevel:5,Glowing:true}
execute as @s at @s run execute positioned ~1 ~15 ~-1 run summon arrow ^ ^ ^3 {Tags:["projectile3"],damage:2,PierceLevel:5,Glowing:true}
execute as @s at @s run execute positioned ~-1 ~15 ~1 run summon arrow ^ ^ ^3 {Tags:["projectile4"],damage:2,PierceLevel:5,Glowing:true}
execute as @s at @s run execute positioned ~ ~15 ~ run summon arrow ^ ^ ^3 {Tags:["projectile5"],damage:2,PierceLevel:5,Glowing:true}

# copy the markers position relative to world origin to the arrows motion tag
data modify entity @e[type=arrow,tag=projectile1,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=arrow,tag=projectile2,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=arrow,tag=projectile3,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=arrow,tag=projectile4,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=arrow,tag=projectile5,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile1] add astra_arrow
tag @e[tag=projectile2] add astra_arrow
tag @e[tag=projectile3] add astra_arrow
tag @e[tag=projectile4] add astra_arrow
tag @e[tag=projectile5] add astra_arrow
tag @e[tag=projectile1] remove projectile1
tag @e[tag=projectile2] remove projectile2
tag @e[tag=projectile3] remove projectile3
tag @e[tag=projectile4] remove projectile4
tag @e[tag=projectile5] remove projectile5
kill @e[tag=direction]
kill @e[type=minecraft:arrow,tag=astra_arrow,nbt={inGround:true,life:3s}]

scoreboard players add @s Timer 20

# player arrow protection
# execute anchored eyes as @s at @s run kill @e[type=minecraft:arrow,distance=..5,tag=astra_arrow,nbt={inGround:false}]