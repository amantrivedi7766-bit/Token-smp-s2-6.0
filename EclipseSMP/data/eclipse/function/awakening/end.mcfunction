scoreboard players set @s ec_awake_time -1
tellraw @s ["",{"text":"Your Awakening has faded...","color":"gray","italic":true}]
particle explosion_emitter ~ ~1 ~ 2 2 2 0 1
