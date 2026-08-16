scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"yellow","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"THUNDERSTORM","color":"yellow","bold":true}]
execute at @s run summon marker ~ ~ ~ {Tags:["thunderstorm"]}
execute as @e[type=marker,tag=thunderstorm,distance=..1] run scoreboard players set @s ec_timer 0
