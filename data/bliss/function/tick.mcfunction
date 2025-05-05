function bliss:main_functions/shard_check

execute as @e[type=interaction,tag=click_scan] on target if items entity @s weapon *[custom_data~{right_click:true}] run say Right Click!
execute as @e[type=interaction,tag=click_scan] run data remove entity @s interaction