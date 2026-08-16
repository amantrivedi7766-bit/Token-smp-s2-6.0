# Event Timer
scoreboard players add #event_timer ec_timer 1

# Random Event every 30 mins (36000 ticks)
execute if score #event_timer ec_timer matches 36000 run function eclipse:events/start_random
execute if score #event_active ec_timer matches 1.. run scoreboard players add #event_active ec_timer 1
execute if score #event_active ec_timer matches 6000 run function eclipse:events/end

# Event Specific Logic
execute if score #event_type ec_timer matches 1 run function eclipse:events/meteor_shower_tick
execute if score #event_type ec_timer matches 2 run function eclipse:events/double_shard_tick
