execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:purpur_slab"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add purpur_pillar_crafting
execute as @s[tag=purpur_pillar_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:purpur_pillar 1
execute as @s[tag=purpur_pillar_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:purpur_slab"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove purpur_pillar_crafting
scoreboard players reset @s count_in1
