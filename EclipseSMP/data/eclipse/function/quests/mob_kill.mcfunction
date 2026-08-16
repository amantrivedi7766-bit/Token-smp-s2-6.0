scoreboard players add @s ec_shards 1
execute if score #event_type ec_timer matches 2 run scoreboard players add @s ec_shards 1
scoreboard players add @s ec_xp 10
tellraw @s ["",{"text":"+1 Eclipse Shard","color":"aqua"}]
execute if score #event_type ec_timer matches 2 run tellraw @s ["",{"text":"+1 Bonus Shard (Event!)","color":"gold"}]
function eclipse:check_level_up
