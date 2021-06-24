
#tags user & removes previous users
tag @a remove user

execute as @p[limit=1] run tag @s add user

execute as @a[tag=user] run function items-101:help/start


