execute if score @s ec_core matches 1 run particle portal ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 1 run effect give @s speed 2 2 true
execute if score @s ec_core matches 1 run effect give @s strength 2 2 true

execute if score @s ec_core matches 2 run particle flame ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 2 run effect give @s strength 2 3 true

execute if score @s ec_core matches 3 run particle snowflake ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 3 run effect give @s resistance 2 2 true

execute if score @s ec_core matches 4 run particle electric_spark ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 4 run effect give @s speed 2 4 true

execute if score @s ec_core matches 5 run particle falling_spore_blossom ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 5 run effect give @s regeneration 2 3 true

execute if score @s ec_core matches 6 run particle end_rod ~ ~1 ~ 1 1 1 0.1 20
execute if score @s ec_core matches 6 run effect give @s jump_boost 2 4 true
execute if score @s ec_core matches 6 run effect give @s slow_falling 2 0 true
