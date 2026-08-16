give @s carrot_on_a_stick[custom_name='{"text":"Ability 1 / 3 Item","color":"gold"}'] 1
execute at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute if score @s ec_cd3 matches 1.. run return 0
execute if score @s ec_core matches 1 run function eclipse:cores/void/ability_3
execute if score @s ec_core matches 2 run function eclipse:cores/inferno/ability_3
execute if score @s ec_core matches 3 run function eclipse:cores/frost/ability_3
execute if score @s ec_core matches 4 run function eclipse:cores/storm/ability_3
execute if score @s ec_core matches 5 run function eclipse:cores/nature/ability_3
execute if score @s ec_core matches 6 run function eclipse:cores/cosmic/ability_3
