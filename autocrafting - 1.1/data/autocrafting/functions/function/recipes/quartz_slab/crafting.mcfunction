execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_chiseled_quartz_block"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add quartz_slab_crafting
execute as @s[tag=quartz_slab_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:quartz_slab 6
execute as @s[tag=quartz_slab_crafting] run scoreboard players set @s adder 3
execute as @s[tag=quartz_slab_crafting] run function autocrafting:function/tags/autocrafting_chiseled_quartz_block/remove
tag @s remove quartz_slab_crafting
scoreboard players reset @s count_in1
