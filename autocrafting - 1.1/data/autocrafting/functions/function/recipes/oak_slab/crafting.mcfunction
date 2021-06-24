execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add oak_slab_crafting
execute as @s[tag=oak_slab_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:oak_slab 6
execute as @s[tag=oak_slab_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count double 1 run scoreboard players remove @s count_in1 3
tag @s remove oak_slab_crafting
scoreboard players reset @s count_in1
