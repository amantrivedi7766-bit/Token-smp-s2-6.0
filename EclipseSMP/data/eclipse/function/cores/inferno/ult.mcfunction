scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"red","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"METEOR STRIKE","color":"red","bold":true}]
execute at @s run summon marker ^ ^ ^10 {Tags:["meteor_strike"]}
execute as @e[type=marker,tag=meteor_strike,distance=..15] run scoreboard players set @s ec_timer 0
