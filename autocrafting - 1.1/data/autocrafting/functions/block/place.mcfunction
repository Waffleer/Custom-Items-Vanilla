#AS Firework_rocket
#At Firework_rocket
summon item_frame ~ ~ ~ {Tags:["setcrafter"], Facing:1b}
execute at @e[type=item_frame, sort=nearest, limit=1, tag=setcrafter] run summon armor_stand ~ ~-0.03 ~ {Tags:["autocrafter", "unset"], Invulnerable:1b, Small:1b, NoGravity:1b, Invisible:1b, DisabledSlots:4144959}
execute if score #useCustomModeldata gamerule matches 1.. run replaceitem entity @e[type=minecraft:armor_stand, tag=autocrafter, tag=unset] armor.head minecraft:firework_rocket{tag:{CustomModelData:2073592}}
#TODO: LOCK
summon item_frame ~ ~3 ~ {Facing:1b,Invulnerable:1b,Silent:1b,Invisible:1b,Fixed:1b,Tags:["texture_frame","auto"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:100001,EntityTag:{Tags:["texture","auto"],Invulnerable:1b}}}}

execute at @e[type=item_frame, sort=nearest, limit=1, tag=setcrafter] run setblock ~ ~ ~ dropper[facing=up]{Lock:"§autocrafter",CustomName:'{"text":"Autocrafter","color":"dark_gray"}'}
kill @e[type=item_frame, limit=1, sort=nearest, tag=setcrafter]


kill @s

