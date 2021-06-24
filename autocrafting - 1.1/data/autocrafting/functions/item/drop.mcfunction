
execute store result score @s dummy run data get entity @s HandItems[0].tag.content
execute store result score @s count run data get entity @s HandItems[0].tag.content[0].Count
#tellraw @p ["",{"text":"1: Count: "},{"score":{"name":"@s","objective":"count"}},{"text":", Dummy: "},{"score":{"name":"@s","objective":"dummy"}},{"text":", TagCount: "},{"nbt":"HandItems[0].tag.content[0].Count","entity":"@s"}]
execute unless score @s count matches ..0 run summon item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b}}

#Less then 64
execute unless score @s count matches ..0 if score @s count matches ..64 run data modify entity @e[type=item, nbt={Item:{id:"minecraft:command_block"}}, limit=1, sort=nearest] Item.Count set from entity @s HandItems[0].tag.content[0].Count
execute unless score @s count matches ..0 if score @s count matches ..64 store result entity @s HandItems[0].tag.content[0].Count byte 1 run scoreboard players operation @s count -= @s count

#More then 64
execute unless score @s count matches ..0 if score @s count matches 65.. run data modify entity @e[type=item, nbt={Item:{id:"minecraft:command_block"}}, limit=1, sort=nearest] Item.Count set value 64
#tellraw @p ["",{"text":"2: Count: "},{"score":{"name":"@s","objective":"count"}},{"text":", Dummy: "},{"score":{"name":"@s","objective":"dummy"}},{"text":", TagCount: "},{"nbt":"HandItems[0].tag.content[0].Count","entity":"@s"}]
execute unless score @s count matches ..0 if score @s count matches 65.. store result entity @s HandItems[0].tag.content[0].Count double 1 run scoreboard players remove @s count 64

#tellraw @p ["",{"text":"3: Count: "},{"score":{"name":"@s","objective":"count"}},{"text":", Dummy: "},{"score":{"name":"@s","objective":"dummy"}},{"text":", TagCount: "},{"nbt":"HandItems[0].tag.content[0].Count","entity":"@s"}]

#Change Id
execute unless score @s dummy matches ..0 run data modify entity @e[type=item, limit=1, nbt={Item:{id:"minecraft:command_block"}}, sort=nearest] Item.id set from entity @s HandItems[0].tag.content[0].id



#Remove from contentlist
execute if score @s count matches ..0 run data remove entity @s HandItems[0].tag.content[0]

#Redo
execute unless score @s dummy matches ..0 as @s at @s positioned ~ ~0.02 ~ run function autocrafting:item/drop
execute unless score @s count matches ..0 as @s at @s positioned ~ ~0.02 ~ run function autocrafting:item/drop
