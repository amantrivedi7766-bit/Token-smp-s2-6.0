scoreboard players set @s ec_cd3 160
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute at @s run summon marker ^ ^1.5 ^1 {Tags:["void_blast"]}
execute as @e[type=marker,tag=void_blast,distance=..2,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=void_blast,distance=..2] run scoreboard players set @s ec_timer 0
