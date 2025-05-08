function bliss:main_functions/shard_check

execute as @a[scores={Timer=0}] run function bliss:shard_reload

scoreboard players remove @a[scores={Timer=1..}] Timer 1

title @a[scores={Timer=1}] actionbar {color:aqua,text:"Shard Recharged"}
scoreboard players add random-8 Timer 1
execute if score random-8 Timer matches 9 run scoreboard players set random-8 Timer 1

function bliss:shard_clear