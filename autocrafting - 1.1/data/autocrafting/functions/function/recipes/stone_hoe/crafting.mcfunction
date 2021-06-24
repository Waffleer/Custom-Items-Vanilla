execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"stone_tool_materials"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add stone_hoe_crafting
execute as @s[tag=stone_hoe_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:stone_hoe 1
execute as @s[tag=stone_hoe_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=stone_hoe_crafting] run scoreboard players set @s adder 2
execute as @s[tag=stone_hoe_crafting] run function autocrafting:function/tags/stone_tool_materials/remove
tag @s remove stone_hoe_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
