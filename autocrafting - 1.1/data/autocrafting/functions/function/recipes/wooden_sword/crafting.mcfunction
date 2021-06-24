execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add wooden_sword_crafting
execute as @s[tag=wooden_sword_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:wooden_sword 1
execute as @s[tag=wooden_sword_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=wooden_sword_crafting] run scoreboard players set @s adder 2
execute as @s[tag=wooden_sword_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove wooden_sword_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
