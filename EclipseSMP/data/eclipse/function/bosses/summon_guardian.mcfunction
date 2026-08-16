tellraw @a ["",{"text":"[!] ","color":"red","bold":true},{"text":"The Eclipse Guardian has been summoned!","color":"dark_purple"}]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5
summon iron_golem ~ ~1 ~ {Tags:["eclipse_guardian"],CustomName:'{"text":"Eclipse Guardian","color":"dark_purple","bold":true}',Health:500,Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.attack_damage",Base:15},{Name:"generic.movement_speed",Base:0.3}]}
bossbar set eclipse:boss_guardian players @a
bossbar set eclipse:boss_guardian value 100
