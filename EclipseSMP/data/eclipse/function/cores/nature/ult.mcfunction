scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"green","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"WRATH OF NATURE","color":"green","bold":true}]
execute at @s run summon marker ~ ~ ~ {Tags:["wrath_nature"]}
execute as @e[type=marker,tag=wrath_nature,distance=..1] run scoreboard players set @s ec_timer 0
