execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bookshelf_crafting
execute as @s[tag=bookshelf_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bookshelf 1
execute as @s[tag=bookshelf_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=bookshelf_crafting] run scoreboard players set @s adder 6
execute as @s[tag=bookshelf_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove bookshelf_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
