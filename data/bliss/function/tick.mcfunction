execute as @a[scores={Timer=2400}] run title @s actionbar "2 Minutes till shard recharge..."
execute as @a[scores={Timer=1200}] run title @s actionbar "1 Minute till shard recharge..."
execute as @a[scores={Timer=600}] run title @s actionbar "30 Seconds till shard recharge..."
execute as @a[scores={Timer=200}] run title @s actionbar "10 Seconds till shard recharge..."
execute as @a[scores={Timer=0}] run function bliss:shard_reload

scoreboard players remove @a[scores={Timer=1..}] Timer 1
execute as @a[scores={timeSinceLastDeath=1}] run scoreboard players set @s Timer 1

title @a[scores={Timer=1}] actionbar {"color":"aqua","text":"Shard Recharged"}
scoreboard players add random-8 Timer 1
execute if score random-8 Timer matches 9 run scoreboard players set random-8 Timer 1

function bliss:shard_clear

execute as @a[scores={playTime=1}] run function bliss:player_changes/player_assign_random

execute as @a[tag=astra_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/astra
execute as @a[tag=fire_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/fire
execute as @a[tag=gust_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/gust
execute as @a[tag=heart_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/heart
execute as @a[tag=pulse_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/pulse
execute as @a[tag=speed_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/speed
execute as @a[tag=strength_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/strength
execute as @a[tag=wealth_player,scores={timeSinceLastDeath=1,playTime=10..}] run function bliss:shards/give_shard/wealth

recipe give @a[scores={playTime=1}] bliss:shard_reroll_craft

# Shard Flare
execute as @a[scores={Timer=1200..},tag=fire_player] at @s run particle minecraft:flame ~ ~ ~ 0.2 0 0.2 0 5 force
execute as @a[scores={Timer=300..},tag=speed_player] at @s run particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.2 0 0.2 0 10 force
execute as @a[scores={Timer=1140..},tag=strength_player] at @s positioned ~ ~0.5 ~ run function bliss:shards/shard_flare/strength_flare
execute as @a[scores={Timer=1140..},tag=strength_player] at @s run tp @s @s
execute as @a[scores={Timer=1300..},tag=fire_player] at @s run setblock ~ ~ ~ fire keep