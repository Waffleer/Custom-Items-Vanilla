execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:polished_blackstone_slab"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add chiseled_polished_blackstone_crafting
execute as @s[tag=chiseled_polished_blackstone_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:chiseled_polished_blackstone 1
execute as @s[tag=chiseled_polished_blackstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:polished_blackstone_slab"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove chiseled_polished_blackstone_crafting
scoreboard players reset @s count_in1
