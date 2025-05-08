tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Gust Shard"}]

# Gem Description:
# Puff gem creates a bubble shield around the player for 20s 
# Upgraded gives shield and regen 2 around player for 30s
# Downgraded gives smaller bubble for 10s

execute anchored eyes run summon minecraft:armor_stand ~ ~0.6325 ~ {Invisible:true,DeathTime:40,Health:0f,Silent:true,NoAI:true,active_effects:[{id:"minecraft:wind_charged",Amplifier:1,Duration:1}]}
execute anchored eyes run summon minecraft:armor_stand ~ ~0.6325 ~ {Invisible:true,DeathTime:40,Health:0f,Silent:true,NoAI:true,active_effects:[{id:"minecraft:wind_charged",Amplifier:1,Duration:1}]}
execute anchored eyes run summon minecraft:armor_stand ~ ~0.6325 ~ {Invisible:true,DeathTime:40,Health:0f,Silent:true,NoAI:true,active_effects:[{id:"minecraft:wind_charged",Amplifier:1,Duration:1}]}

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 40