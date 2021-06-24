execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_red_sandstone"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_sandstone_stairs_crafting
execute as @s[tag=red_sandstone_stairs_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_sandstone_stairs 4
execute as @s[tag=red_sandstone_stairs_crafting] run scoreboard players set @s adder 6
execute as @s[tag=red_sandstone_stairs_crafting] run function autocrafting:function/tags/autocrafting_red_sandstone/remove
tag @s remove red_sandstone_stairs_crafting
scoreboard players reset @s count_in1
