scoreboard players remove #useCustomModeldata gamerule 1
execute if score #useCustomModeldata gamerule matches -1 run scoreboard players set #useCustomModeldata gamerule 1

execute if score #useCustomModeldata gamerule matches 1.. run tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"Gamerule useCustomModeldata is now set to: true","color":"#EA7015"}]
execute if score #useCustomModeldata gamerule matches ..0 run tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"Gamerule useCustomModeldata is now set to: false","color":"#EA7015"}]
execute if score #useCustomModeldata gamerule matches 1.. run replaceitem entity @e[type=minecraft:armor_stand, tag=autocrafter] armor.head minecraft:firework_rocket{tag:{CustomModelData:2073592}}
execute if score #useCustomModeldata gamerule matches ..0 run replaceitem entity @e[type=minecraft:armor_stand, tag=autocrafter] armor.head minecraft:air
