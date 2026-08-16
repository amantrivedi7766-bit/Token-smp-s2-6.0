scoreboard players set @s ec_cdult 600
tellraw @a ["",{"text":"[!] ","color":"dark_purple","bold":true},{"selector":"@s"},{"text":" activated ","color":"gray"},{"text":"VOID COLLAPSE","color":"dark_purple","bold":true}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
execute at @s run summon marker ~ ~ ~ {Tags:["void_collapse"]}
execute as @e[type=marker,tag=void_collapse,distance=..1] run scoreboard players set @s ec_timer 0
