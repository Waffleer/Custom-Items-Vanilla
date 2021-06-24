execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:cobblestone"}]} run tag @s add add_cobblestone
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:blackstone"}]} run tag @s add add_blackstone

execute if entity @s[tag=add_cobblestone] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_blackstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_cobblestone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute if entity @s[tag=add_blackstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:blackstone"}].Count

execute if entity @s[tag=add_cobblestone] store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_blackstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:blackstone"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_cobblestone] run tag @s remove add_cobblestone
execute if entity @s[tag=add_blackstone] run tag @s remove add_blackstone
