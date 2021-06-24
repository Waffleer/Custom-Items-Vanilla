execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count
execute if score @s count_in1 matches 6.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add barrel_crafting
execute as @s[tag=barrel_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:barrel 1
execute as @s[tag=barrel_crafting] run scoreboard players set @s adder 6
execute as @s[tag=barrel_crafting] run function autocrafting:function/tags/planks/remove
execute as @s[tag=barrel_crafting] run scoreboard players set @s adder 2
execute as @s[tag=barrel_crafting] run function autocrafting:function/tags/wooden_slabs/remove
tag @s remove barrel_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
