tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Astra Shard"}]

# Gem Description:
# Astra gem shoots 5 arrows that deal 2 hearts each
# Upgraded shoots 7 arrows that deal 1 hearts each 
# Downgraded shoots 3 arrows that deal 1 hearts each 

# uses the world origin point in place of the player so that world position can be translated to motion later
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["direction"]}

# summon the projectile entity
# When using a projectile, you want to summon it in front of the player so it doesn't hit the player themselves
execute as @s at @s run execute positioned ~0 ~1.5 ~0 run summon arrow ^ ^0.5 ^1 {Tags:["projectile"],damage:2,Glowing:true}

# copy the markers position relative to world origin to the arrows motion tag
data modify entity @e[type=arrow,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile] add astra_arrow
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]
kill @e[type=minecraft:arrow,tag=astra_arrow,nbt={inGround:true}]

scoreboard players add @s Timer 0

# player arrow protection
# execute anchored eyes as @s at @s run kill @e[type=minecraft:arrow,distance=..5,tag=astra_arrow,nbt={inGround:false}]

# Flare
execute as @s at @s anchored feet positioned ~ ~-0.8 ~ facing ^ ^ ^ run function bliss:shards/shard_flare/astra_flare