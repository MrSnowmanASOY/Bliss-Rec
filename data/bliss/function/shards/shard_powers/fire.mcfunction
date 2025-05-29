tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Fire Shard"}]

# Gem Description:
# Fire gem gives fire resistance for 1 minute
# Upgraded gives fire resistance 2 minutes and regen 3 for 10s 
# Downgraded gives fire resistance for 30s 

effect give @s fire_resistance 60 0 true

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 2400

playsound item.flintandsteel.use master @s ~ ~ ~ 1 1 1