tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Speed Shard"}]

# Gem Description:
# Speed gem gives speed 2 for 20s when used
# Upgraded speed gem gives speed 3 for 30s 
# Downgraded speed gem gives speed 1 for 10s 

effect give @s speed 15 4 true
effect give @s dolphins_grace 15 0 true

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 400

playsound minecraft:ui.toast.in master @s ~ ~ ~ 100 1 1