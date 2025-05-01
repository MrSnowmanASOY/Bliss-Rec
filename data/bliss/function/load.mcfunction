tellraw @a {"color":"gold","text":"Loaded Bliss 0.0.1"}
tellraw @a {"color":"gold","text":"Enjoy your shards"}

tellraw @a[team=debug] "You are in debug mode!"
tellraw @a[team=debug] "Debug mode is not recommended for normal play!"
tellraw @a[team=debug] {text:"Click this message to leave debug mode! (requires admin perms)",color:"white",click_event:{action:"run_command",command:"/team leave @s"}}

team add debug
team modify debug color red
team modify debug prefix "[DEBUG ENABLED] "