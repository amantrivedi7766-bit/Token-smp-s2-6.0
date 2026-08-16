scoreboard players set @s ec_cd2 200
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.5
execute at @s positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["void_prison"]}
execute as @e[type=marker,tag=void_prison,distance=..6] run scoreboard players set @s ec_timer 0
