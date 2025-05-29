tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Wealth Shard"}]

# Wealth Gem

execute at @s as @a[distance=..20,limit=5,sort=nearest] run effect give @s hero_of_the_village 120 4 true
execute at @s as @a[distance=..20,limit=5,sort=nearest] run effect give @s luck 120 4 true

# Apply Flare
function bliss:shards/shard_flare/wealth_flare

# Add Cooldown (In Ticks [x20 seconds])
scoreboard players add @s Timer 2400