#As Autocrafter
#At Autocrafter
#unless block ~ ~ ~ dropper
kill @e[type=item, nbt={Item:{id:"minecraft:barrier", tag:{clear:1b}}}]
kill @e[type=item, nbt={Item:{id:"minecraft:dropper"}, Age:0s}, limit=1, sort=nearest]
execute positioned ~ ~-1 ~ run function autocrafting:block/remove
execute positioned ~ ~0.2 ~ run function autocrafting:item/give
execute if entity @s[tag=!unset] positioned ~ ~0.2 ~ run function autocrafting:item/drop
kill @s
