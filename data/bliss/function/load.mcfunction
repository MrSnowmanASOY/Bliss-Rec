tellraw @a {"color":"gold","text":"Loaded Bliss 0.0.1"}
tellraw @a {"color":"gold","text":"Enjoy your shards"}

tellraw @a[team=debug] "You are in debug mode!"
tellraw @a[team=debug] "Debug mode is not recommended for normal play!"
tellraw @a[team=debug] {text:"Click this message to leave debug mode! (requires admin perms)",color:"white",click_event:{action:"run_command",command:"/team leave @s"}}
tellraw @a[team=debug] ""
tellraw @a[team=debug] {text:"If you intend to use debug mode it is recommended to have a chat width of 400px for nice logging.",color:"red"}

team add debug
team modify debug color red
team modify debug prefix "*"

scoreboard objectives add Timer dummy