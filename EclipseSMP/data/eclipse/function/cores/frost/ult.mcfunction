scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"aqua","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"ABSOLUTE ZERO","color":"aqua","bold":true}]
execute at @s run summon marker ~ ~ ~ {Tags:["absolute_zero"]}
execute as @e[type=marker,tag=absolute_zero,distance=..1] run scoreboard players set @s ec_timer 0
