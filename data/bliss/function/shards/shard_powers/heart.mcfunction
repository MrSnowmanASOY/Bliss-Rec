tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Heart Shard"}]

# Gem Description:
# Life gem removes 2 hearts per crit hit and if ability is used when they die it will come up with a totem affect bringing them up to full health
# Upgraded gem deals 3 hearts per crit and if ability is used when they die it will come up with a totem affect bringing them up to full health with + 5 hearts 
# Downgraded gem deals extra 1 heart per crit and if ability is used when they die it will come up with a totem affect bringing them up to half health

effect give @s absorption 30 2 true

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 2400

# Flare
playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1 1
particle cherry_leaves ~ ~ ~ 1 2 1 1 150 force