scoreboard players set @s ec_cd2 160
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1
execute at @s run summon marker ~ ~ ~ {Tags:["gravity_well"]}
execute as @e[type=marker,tag=gravity_well,distance=..1] run scoreboard players set @s ec_timer 0
