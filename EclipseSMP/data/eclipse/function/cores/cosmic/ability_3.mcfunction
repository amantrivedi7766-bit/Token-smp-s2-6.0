scoreboard players set @s ec_cd3 200
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1
execute at @s run summon marker ^ ^1.5 ^1 {Tags:["star_fall"]}
execute as @e[type=marker,tag=star_fall,distance=..2,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=star_fall,distance=..2] run scoreboard players set @s ec_timer 0
