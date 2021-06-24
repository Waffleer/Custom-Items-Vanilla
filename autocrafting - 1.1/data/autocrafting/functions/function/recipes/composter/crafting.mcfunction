execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count
execute if score @s count_in1 matches 7.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add composter_crafting
execute as @s[tag=composter_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:composter 1
execute as @s[tag=composter_crafting] run scoreboard players set @s adder 7
execute as @s[tag=composter_crafting] run function autocrafting:function/tags/wooden_slabs/remove
tag @s remove composter_crafting
scoreboard players reset @s count_in1
