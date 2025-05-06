tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Pulse Shard"}]

# Gem Description:
# Flux gem shoots out a powerfull warden beam dealing up to 4 hearts
# Upgraded shoots warden beam dealing 6 hearts 
# Downgraded shoots warden beam dealing 2 hearts 

execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ^ ^ ^ 100 2
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ^ ^ ^5 100 1
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ^ ^ ^10 100 0.5
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ^ ^ ^15 100 0.25
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ^ ^ ^20 100 0

# Make the particles 
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^1 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^2 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^4 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^5 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^6 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^7 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^8 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^9 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^10 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^11 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^12 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^13 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^14 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^15 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^16 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^17 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^18 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^19 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^20 0.2 0.2 0.2 0 10 force

# Make the damage bubbles

execute at @s as @s anchored eyes positioned ^ ^ ^1 run execute as @e[distance=..1] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^2 run execute as @e[distance=..1] run damage @s 25 bliss:player_boom

execute at @s as @s anchored eyes positioned ^ ^ ^3 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^4 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^5 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^6 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^7 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^8 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^9 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^10 run execute as @e[distance=..2] run damage @s 25 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^11 run execute as @e[distance=..2] run damage @s 20 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^12 run execute as @e[distance=..2] run damage @s 20 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^13 run execute as @e[distance=..2] run damage @s 20 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^14 run execute as @e[distance=..2] run damage @s 18 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^15 run execute as @e[distance=..2] run damage @s 18 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^16 run execute as @e[distance=..2] run damage @s 15 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^17 run execute as @e[distance=..2] run damage @s 15 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^18 run execute as @e[distance=..2] run damage @s 14 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^19 run execute as @e[distance=..2] run damage @s 14 bliss:player_boom
execute at @s as @s anchored eyes positioned ^ ^ ^20 run execute as @e[distance=..2] run damage @s 14 bliss:player_boom

# blast the player back
execute anchored eyes positioned ^ ^ ^0.5 run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:true,DeathTime:40,Health:0f,Silent:true,NoAI:true,active_effects:[{id:"minecraft:wind_charged",Amplifier:50,Duration:1}]}

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 40
