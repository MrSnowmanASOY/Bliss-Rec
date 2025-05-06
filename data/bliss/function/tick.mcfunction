function bliss:main_functions/shard_check

execute as @a[scores={Timer=0}] run function bliss:shard_reload

scoreboard players remove @a[scores={Timer=1..}] Timer 1

title @a[scores={Timer=1}] actionbar {color:aqua,text:"Shard Recharged"}

