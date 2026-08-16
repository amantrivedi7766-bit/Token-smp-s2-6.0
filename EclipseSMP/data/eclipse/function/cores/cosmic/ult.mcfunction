scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"light_purple","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"SUPERNOVA","color":"light_purple","bold":true}]
execute at @s run summon marker ~ ~ ~ {Tags:["supernova"]}
execute as @e[type=marker,tag=supernova,distance=..1] run scoreboard players set @s ec_timer 0
