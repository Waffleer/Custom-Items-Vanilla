#Item: minecraft:blaze_rod
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:blaze_rod"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Tag: stone_crafting_materials
execute as @s at @s run function autocrafting:function/tags/stone_crafting_materials/getcontent

scoreboard players reset @s adder
