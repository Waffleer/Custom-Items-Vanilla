execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add stick_crafting
execute as @s[tag=stick_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:stick 4
execute as @s[tag=stick_crafting] run scoreboard players set @s adder 2
execute as @s[tag=stick_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove stick_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bamboo"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add stick_crafting
execute as @s[tag=stick_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:stick 1
execute as @s[tag=stick_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bamboo"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove stick_crafting
scoreboard players reset @s count_in1
