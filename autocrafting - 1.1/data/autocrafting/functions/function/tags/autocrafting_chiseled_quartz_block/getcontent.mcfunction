execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:chiseled_quartz_block"}]} run tag @s add add_chiseled_quartz_block
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:quartz_block"}]} run tag @s add add_quartz_block
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:quartz_pillar"}]} run tag @s add add_quartz_pillar

execute if entity @s[tag=add_chiseled_quartz_block] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_quartz_block] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_quartz_pillar] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_chiseled_quartz_block] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_quartz_block"}].Count
execute if entity @s[tag=add_quartz_block] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz_block"}].Count
execute if entity @s[tag=add_quartz_pillar] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz_pillar"}].Count

execute if entity @s[tag=add_chiseled_quartz_block] store result entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_quartz_block"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_quartz_block] store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz_block"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_quartz_pillar] store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz_pillar"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_chiseled_quartz_block"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_chiseled_quartz_block"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_chiseled_quartz_block] run tag @s remove add_chiseled_quartz_block
execute if entity @s[tag=add_quartz_block] run tag @s remove add_quartz_block
execute if entity @s[tag=add_quartz_pillar] run tag @s remove add_quartz_pillar
