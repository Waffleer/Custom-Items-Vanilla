execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:purpur_block"}]} run tag @s add add_purpur_block
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:purpur_pillar"}]} run tag @s add add_purpur_pillar

execute if entity @s[tag=add_purpur_block] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_purpur_pillar] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_purpur_block] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:purpur_block"}].Count
execute if entity @s[tag=add_purpur_pillar] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:purpur_pillar"}].Count

execute if entity @s[tag=add_purpur_block] store result entity @s HandItems[0].tag.content[{id:"minecraft:purpur_block"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_purpur_pillar] store result entity @s HandItems[0].tag.content[{id:"minecraft:purpur_pillar"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_purpur_block"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_purpur_block"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_purpur_block] run tag @s remove add_purpur_block
execute if entity @s[tag=add_purpur_pillar] run tag @s remove add_purpur_pillar
