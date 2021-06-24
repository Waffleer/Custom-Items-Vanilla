execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_sandstone"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add sandstone_slab_crafting
execute as @s[tag=sandstone_slab_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:sandstone_slab 6
execute as @s[tag=sandstone_slab_crafting] run scoreboard players set @s adder 3
execute as @s[tag=sandstone_slab_crafting] run function autocrafting:function/tags/autocrafting_sandstone/remove
tag @s remove sandstone_slab_crafting
scoreboard players reset @s count_in1
