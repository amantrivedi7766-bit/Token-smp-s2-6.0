scoreboard players set @s ec_cd2 140
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.5
execute at @s run summon marker ~ ~ ~ {Tags:["flame_ring"]}
execute as @e[type=marker,tag=flame_ring,distance=..1] run scoreboard players set @s ec_timer 0
