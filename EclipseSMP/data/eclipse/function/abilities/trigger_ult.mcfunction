give @s warped_fungus_on_a_stick[custom_name='{"text":"Ability 2 / Ult Item","color":"light_purple"}'] 1
execute at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]
execute if score @s ec_cdult matches 1.. run return 0
execute if score @s ec_ultcharge matches ..99 run return 0
scoreboard players set @s ec_ultcharge 0
execute if score @s ec_core matches 1 run function eclipse:cores/void/ult
execute if score @s ec_core matches 2 run function eclipse:cores/inferno/ult
execute if score @s ec_core matches 3 run function eclipse:cores/frost/ult
execute if score @s ec_core matches 4 run function eclipse:cores/storm/ult
execute if score @s ec_core matches 5 run function eclipse:cores/nature/ult
execute if score @s ec_core matches 6 run function eclipse:cores/cosmic/ult
