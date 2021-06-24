execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bookshelf"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add lectern_crafting
execute as @s[tag=lectern_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:lectern 1
execute as @s[tag=lectern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bookshelf"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=lectern_crafting] run scoreboard players set @s adder 4
execute as @s[tag=lectern_crafting] run function autocrafting:function/tags/wooden_slabs/remove
tag @s remove lectern_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
