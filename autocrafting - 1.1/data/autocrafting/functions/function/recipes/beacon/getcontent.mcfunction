#Item: minecraft:nether_star
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:nether_star"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:nether_star"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:nether_star"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:glass
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:glass"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:obsidian
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:obsidian"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

scoreboard players reset @s adder
