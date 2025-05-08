function bliss:main_functions/shard_check

execute as @a[scores={Timer=2400}] run title @s actionbar "2 Minutes till shard recharge..."
execute as @a[scores={Timer=1200}] run title @s actionbar "1 Minute till shard recharge..."
execute as @a[scores={Timer=600}] run title @s actionbar "30 Seconds till shard recharge..."
execute as @a[scores={Timer=200}] run title @s actionbar "10 Seconds till shard recharge..."
execute as @a[scores={Timer=0}] run function bliss:shard_reload

scoreboard players remove @a[scores={Timer=1..}] Timer 1

title @a[scores={Timer=1}] actionbar {"color":"aqua","text":"Shard Recharged"}
scoreboard players add random-8 Timer 1
execute if score random-8 Timer matches 9 run scoreboard players set random-8 Timer 1

function bliss:shard_clear