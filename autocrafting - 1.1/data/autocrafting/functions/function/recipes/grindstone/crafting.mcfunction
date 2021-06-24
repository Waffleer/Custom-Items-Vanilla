execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stone_slab"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 1.. if score @s count_in3 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add grindstone_crafting
execute as @s[tag=grindstone_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:grindstone 1
execute as @s[tag=grindstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=grindstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stone_slab"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=grindstone_crafting] run scoreboard players set @s adder 2
execute as @s[tag=grindstone_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove grindstone_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
