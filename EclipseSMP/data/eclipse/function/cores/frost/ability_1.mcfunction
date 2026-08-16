scoreboard players set @s ec_cd1 80
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
execute at @s run summon marker ^ ^1.5 ^1 {Tags:["ice_shard"]}
execute as @e[type=marker,tag=ice_shard,distance=..2,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=ice_shard,distance=..2] run scoreboard players set @s ec_timer 0
