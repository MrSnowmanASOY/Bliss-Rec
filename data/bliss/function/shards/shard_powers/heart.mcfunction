tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Heart Shard"}]

# Gem Description:
# Life gem removes 2 hearts per crit hit and if ability is used when they die it will come up with a totem affect bringing them up to full health
# Upgraded gem deals 3 hearts per crit and if ability is used when they die it will come up with a totem affect bringing them up to full health with + 5 hearts 
# Downgraded gem deals extra 1 heart per crit and if ability is used when they die it will come up with a totem affect bringing them up to half health

effect give @s absorption 30 3 true

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 1200