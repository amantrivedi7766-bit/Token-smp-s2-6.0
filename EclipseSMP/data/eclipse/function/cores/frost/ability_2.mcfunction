scoreboard players set @s ec_cd2 160
playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
execute at @s run summon marker ~ ~ ~ {Tags:["blizzard_aura"]}
execute as @e[type=marker,tag=blizzard_aura,distance=..1] run scoreboard players set @s ec_timer 0
