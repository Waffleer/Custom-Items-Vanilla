execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_coal"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add fire_charge_crafting
execute as @s[tag=fire_charge_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:fire_charge 3
execute as @s[tag=fire_charge_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=fire_charge_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=fire_charge_crafting] run scoreboard players set @s adder 1
execute as @s[tag=fire_charge_crafting] run function autocrafting:function/tags/autocrafting_coal/remove
tag @s remove fire_charge_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
