tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Strength Shard"}]

# Gem Description:
# Strength give strength 2 for 20s when used
# Upgraded gives strength 3 for 30s 
# Downgraded gives strength 1 for 10s 

effect give @s strength 33 2 true
effect give @s darkness 33 0 true
effect give @s resistance 33 2 true
effect give @s slowness 33 2 true

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 1200

# Flare 
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1