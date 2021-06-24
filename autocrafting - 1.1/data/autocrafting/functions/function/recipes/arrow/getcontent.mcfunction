#Item: minecraft:stick
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stick"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:flint
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:flint"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:flint"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:flint"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:feather
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:feather"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:feather"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:feather"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

scoreboard players reset @s adder
