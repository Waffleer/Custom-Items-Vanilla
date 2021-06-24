execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"logs"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.tags[{id:"coals"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 3.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add campfire_crafting
execute as @s[tag=campfire_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:campfire 1
execute as @s[tag=campfire_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=campfire_crafting] run scoreboard players set @s adder 3
execute as @s[tag=campfire_crafting] run function autocrafting:function/tags/logs/remove
execute as @s[tag=campfire_crafting] run scoreboard players set @s adder 1
execute as @s[tag=campfire_crafting] run function autocrafting:function/tags/coals/remove
tag @s remove campfire_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
