import os

def newitem():
    #List of uncraftable Items that have duribility
    uncraftable = ["elytra", "trident", "chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots"]

    f = open('Custom Item Data Pack/data/items-101/functions/craft_check.mcfunction', 'a')
    f.write('\n')
    if q122 in uncraftable:
        f.write(f'\nexecute if score {q124}_{q1241} list matches 1 run execute if block ~3 ~1 ~-2 chest{{Items:[{{id:"minecraft:{q122}",Count:1b,tag:{{Damage:0}}}}]}} run function items-101:user_items/{q124}/{q1241}\n')
    else:
        f.write(f'\nexecute if score {q124}_{q1241} list matches 1 run execute if block ~3 ~1 ~-2 chest{{Items:[{{id:"minecraft:{q122}",Count:1b,tag:{{Damage:0}}}}]}} run function items-101:user_items/{q124}/{q1241}\n')
    f.close()

    f = open(f'Custom Item Data Pack\\data\\items-101\\functions\\user_items\\{q124}\\{q1241}.mcfunction', 'a')
    f.write('\n')
    f.write(f'scoreboard players set {q124}_{q1241} list 0 \n')
    f.write(f'setblock ~3 ~1 ~-2 chest[facing=east] \n')
    f.write(f"""summon item ~ ~5 ~ {{Item:{{id:"minecraft:{q122}",Count:1b,tag:{{display:{{Name:'{{"text":"{q121}","color":"dark_red","bold":true}}',Lore:['{{"text":"Custom Item"}}','{{"text":"{q12901}"}}']}},CustomModelData:{q12901}}}}}}} \n""")
    f.write(f'function items-101:particle \n')
    f.write(' \n')
    f.close()


    f = open('Custom Item Data Pack/data/items-101/functions/station/end.mcfunction ', 'a')
    f.write('\n')
    f.write(f'scoreboard players set {q124}_{q1241} list 0 \n')
    f.write('\n')
    f.close()


    f = open(f'Custom Item Data Pack\\data\\items-101\\functions\\help\\lists\\{q124}.mcfunction ', 'a')
    f.write('\n')
    if q124 == 'generic':
        f.write(f'tellraw @s {{"text":"1 [{q121} - {q122}]","color":"dark_aqua","bold":true,"clickEvent":{{"action":"run_command","value":"/execute as @a[tag=user] run scoreboard players set {q124}_{q1241} list 1 "}}}}\n')
    else:
        f.write(f'tellraw @s {{"text":"1 [{q121} - {q122}]","color":"dark_aqua","bold":true,"clickEvent":{{"action":"run_command","value":"/execute as @a[tag=user,tag={q124}] run scoreboard players set {q124}_{q1241} list 1 "}}}}\n')
        f.write('\n')
        f.close()

    #Reasource pack stuff

    if os.path.isfile(f'Custom Items [RES]/assets/minecraft/models/item/{q122}.json'):
        print ("File exists")
        print('\n')
        print(f'Paste this line into minecraft/models/item/{q12901}.json')
        print('\n')
        print('paste this under the last instance of the text and add a comma in the instance before')
        print('\n')
        print(f'{{"predicate": {{"custom_model_data":{q12901}}}, "model": "item/custom/{q12901}"}}')
        print('\n')
    else:
        f = open(f'Custom Items [RES]/assets/minecraft/models/item/{q122}.json', 'a')
        f.write(f"""{{\t"parent": "item/generated",\n""")
        f.write(f"""\t"textures": {{\n""")
        f.write(f"""\t\t"layer0": "item/{q122}"\n""")        
        f.write(f"""\t}},\n""")
        f.write(f"""\n""")
        f.write(f"""\t"overrides": [\n""")
        f.write(f"""{{"predicate": {{"custom_model_data":{q12901}}}, "model": "item/custom/{q12901}"}}\n""")
        f.write('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n')
        f.write(f"""]}}""")
        f.close()




    f = open(f'Custom Items [RES]/assets/minecraft/models/item/custom/{q12901}.json', 'a')
    f.write('\n')
    f.write('\n')
    f.write(f"""{{\t\t"parent": "item/generated",\n\t\t"textures": {{\n\t\t\t"layer0": "custom items/{q123}"\n\t}}}}""")
    f.close()

    print("\nDon't forget to move the png to")
    print('\tCustom Items [RES]/assets/minecraft/textures/custom items')
def newentity():
    #List of uncraftable Items that have duribility
    uncraftable = ["elytra", "trident", "chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots"]

    f = open('Custom Item Data Pack/data/items-101/functions/craft_check.mcfunction', 'a')
    f.write('\n')
    if q122 in uncraftable:
        f.write(f'execute if score {q124}_{q1241} list matches 1 run execute if block ~3 ~1 ~-2 chest{{Items:[{{id:"minecraft:{q122}",Count:1b,tag:{{Damage:0}}}}]}} run function items-101:user_items/{q124}/{q1241}\n')
    else:
        f.write(f'execute if score {q124}_{q1241} list matches 1 run execute if block ~3 ~1 ~-2 chest{{Items:[{{id:"minecraft:{q122}",Count:1b,tag:{{Damage:0}}}}]}} run function items-101:user_items/{q124}/{q1241}\n')
    f.close()

    f = open(f'Custom Item Data Pack/data/items-101/functions/user_items/{q124}/{q1241}.mcfunction', 'a')
    f.write('\n')
    f.write(f'scoreboard players set {q124}_{q1241} list 0 \n')
    f.write(f'setblock ~3 ~1 ~-2 chest[facing=east] \n')
    f.write(f"""summon item ~ ~5 ~ {{Item:{{id:"minecraft:{q122}",Count:1b,tag:{{display:{{Name:'{{"text":"{q121}","color":"dark_red","bold":true}}',Lore:['{{"text":"Custom Item"}}','{{"text":"{q12901}"}}']}},CustomModelData:{q12901}}}}}}} \n""")
    f.write(f'function items-101:particle \n')
    f.write(' \n')
    f.close()


    f = open('Custom Item Data Pack/data/items-101/functions/station/end.mcfunction', 'a')
    f.write('\n')
    f.write(f'scoreboard players set {q124}_{q1241} list 0 \n')
    f.write('\n')
    f.close()


    f = open(f'Custom Item Data Pack/data/items-101/functions/help/lists/{q124}.mcfunction ', 'a')
    f.write('\n')
    if q124 == 'generic':
        f.write(f'tellraw @s {{"text":"1 [{q121} - {q122}]","color":"dark_aqua","bold":true,"clickEvent":{{"action":"run_command","value":"/execute as @a[tag=user] run scoreboard players set {q124}_{q1241} list 1 "}}}}\n')
    else:
        f.write(f'tellraw @s {{"text":"1 [{q121} - {q122}]","color":"dark_aqua","bold":true,"clickEvent":{{"action":"run_command","value":"/execute as @a[tag=user,tag={q124}] run scoreboard players set {q124}_{q1241} list 1 "}}}}\n')
        f.write('\n')
    f.close()



    #Reasource pack stuff
    if os.path.isfile(f'Custom Items [RES]/assets/minecraft/models/item/{q122}.json'):
        print ("File exists")
        print('\n')
        print(f'Paste this line into minecraft/models/item/{q12901}.json')
        print('\n')
        print('paste this under the last instance of the text and add a comma in the instance before')
        print('\n')
        print(f'{{"predicate": {{"custom_model_data":{q12901}}}, "model": "item/custom/{q12901}"}}')
        print('\n')
    else:

        f = open(f'Custom Items [RES]/assets/minecraft/models/item/{q122}.json', 'a')
        f.write(f"""{{\t"parent": "item/generated",\n""")
        f.write(f"""\t"textures": {{\n""")
        f.write(f"""\t\t"layer0": "item/elytra"\n""")        
        f.write(f"""\t}},\n""")
        f.write(f"""\n""")
        f.write(f"""\t"overrides": [\n""")
        f.write(f"""{{"predicate": {{"custom_model_data":{q12901}}}, "model": "item/custom/{q12901}"}}\n""")
        f.write('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n')
        f.write(f"""]}}""")
        f.close()


    f = open(f'Custom Items [RES]/assets/minecraft/models/item/custom/{q12901}.json', 'a')
    f.write('\n')
    f.write('\n')
    f.write(f"""{{\t\t"parent": "item/generated",\n\t\t"textures": {{\n\t\t\t"layer0": "custom items/{q125}"\n\t}}}}""")
    f.close()

    print("\nDon't forget to move the Entity Texture to\n")
    print('\tCustom Items [RES]/assets/minecraft/optifine/cit')
    print('\n')

    print("\nAnd the item Texture to\n")
    print('\tCustom Items [RES]/assets/minecraft/textures/custom items')
    print('\n')

    f = open(f'Custom Items [RES]/assets/minecraft/optifine/cit/{q12901}.properties', 'a')
    f.write(f'type={q122}   \nitems={q122}   \ntexture={q123}   \nnbt.display.Lore.*=ipattern:*{q12901}*')
    f.close
def newuser():
    import os
    #New Player

    f = open('Custom Item Data Pack/data/items-101/functions/loop.mcfunction', 'a')
    f.write('\n')
    f.write(f'tag @a[name="{q211}"] add {q212} \n')
    f.write(f'execute as @a[tag=user,tag={q212}] run scoreboard players set {q212} list 1 \n')
    f.write(f'execute as @a[tag=!user,tag={q212}] run scoreboard players set {q212} list 0\n')
    f.write('\n')
    f.close()


    f = open('Custom Item Data Pack/data/items-101/functions/station/end.mcfunction', 'a')
    f.write('\n')
    f.write(f'scoreboard players set {q212} list 0 \n')
    f.write('\n')
    f.close()

    f = open('Custom Item Data Pack/data/items-101/functions/help/personal_check.mcfunction', 'a')
    f.write('\n')
    f.write(f'execute as @a[tag=user,tag={q212}] run function items-101:help/lists/{q212} \n')
    f.write('\n')
    f.close()

    f = open(f'Custom Item Data Pack/data/items-101/functions/help/lists/{q212}.mcfunction', 'a')
    f.close()

    #makes new folder - this is a dumb method
    if not os.path.exists(rf'Custom Item Data Pack/data/items-101/functions/user_items/{q212}'):
        os.makedirs(rf'Custom Item Data Pack/data/items-101/functions/user_items/{q212}')

    f = open(f'Custom Item Data Pack/data/items-101/functions/user_items/{q212}/{q211}.txt', 'w')
    f.close()

    f = open('Custom Item Data Pack/data/items-101/functions/help/lists/complete.mcfunction', 'a')

    f.write('\n')
    f.write(f'tellraw @s {{"text":"[{q211}]","color":"dark_red","bold":true}} \n')
    f.write(f'function items-101:help/lists/{q212} \n')
    f.write('\n')
    f.close()


q1input = input('Do You Want to make a new Entity, Item, or User? (E/I/U)')
q1 = q1input.lower()

if q1 != 'e':
    if q1 != 'i':
    #New User
        player_name = input('What is the exact name of the player? (waffledog1000, bacondog001)')
        player_number = input("What is the number of the new player? (player1, player7)")

        print('\n')
        print(f'\t\t Name of item = {player_name} \n')
        print(f'\t\t Item Replaced = {player_number} \n')


        correctYN = input('Is this correct? (Y/N) ')
        correct = correctYN.lower()

        if correct == 'y':
            writecodeYN = input('Do you want to input this into the Datapack (Y/N) ')
            writecode = writecodeYN.lower()

            if writecode == 'y':
                q211 = player_name
                q212 = player_number

                newuser()


            else:
                print('failed')
        else:
            print('no')

    else:
    #New Item
        item_replaced = input('What item is being replaced? (iron_sword, elytra, iron_boots)')
        item_name = input("""What is the name is the item? (Ravens Wing, Super Sword - Dont use ' )""")
        item_texture = input("""What is the name of the texture? (ravens wing.png, dawn wings.png - Dont use ' )""")
        item_player = input("Who owns the item? (player3, player9, generic)")
        item_num = input("What item number is it? (item1, item22)")
        item_cmd = input("What Custom Model Data number is it (111001, 111921 - pick a number between 1-999 and add 111000)")

        print('\n')
        print(f'\t\t Name of item = {item_name} \n')
        print(f'\t\t Item Replaced = {item_replaced} \n')
        print(f'\t\t Name of texture = {item_texture} \n')
        print(f'\t\t Owner of item = {item_player} \n')
        print(f'\t\t Number of item = {item_num} \n')
        print(f'\t\t Custom Model data = {item_cmd} \n')

        correctYN = input('Is this correct? (Y/N)')
        correct = correctYN.lower()

        if correct == 'y':
            writecodeYN = input('Do you want to input this into the Datapack & Reasource Pack (Y/N)')
            writecode = writecodeYN.lower()

            if writecode == 'y':
                q122 = item_replaced
                q121 = item_name
                q123 = item_texture
                q124 = item_player
                q1241 = item_num
                q12901 = item_cmd

                newitem()


            else:
                print('Restart form')
        else:
            print('Restart form')

else:
#new entity
    item_replaced = input('What item is being replaced? (iron_sword, elytra, iron_boots)')
    item_name = input("""What is the name is the item? (Ravens Wing, Super Sword - Dont use ' )""")
    item_texture = input("""What is the name of the entity texture? (ravens wing.png, dawn wings.png - Dont use ' )""")
    item_item_texture = input("""What is the name of the item texture? (ravens wing icon.png, dawn wings icon.png - Dont use ' )""")
    item_player = input("Who owns the item? (player3, player9, generic)")
    item_num = input("What item number is it? (item1, item22)")
    item_cmd = input("What Custom Model Data number is it (111001, 111921 - pick a number between 1-999 and add 111000)")

    print('\n')
    print(f'\t\t Name of item = {item_name} \n')
    print(f'\t\t Item Replaced = {item_replaced} \n')
    print(f'\t\t Name of texture = {item_texture} \n')
    print(f'\t\t name of Item texture = {item_item_texture} \n')
    print(f'\t\t Owner of item = {item_player} \n')
    print(f'\t\t Number of item = {item_num} \n')
    print(f'\t\t Custom Model data = {item_cmd} \n')

    correctYN = input('Is this correct? (Y/N)')
    correct = correctYN.lower()

    if correct == 'y':
        writecodeYN = input('Do you want to input this into the Datapack & Reasource Pack (Y/N)')
        writecode = writecodeYN.lower()

        if writecode == 'y':
            q122 = item_replaced
            q121 = item_name
            q123 = item_texture
            q124 = item_player
            q1241 = item_num
            q12901 = item_cmd
            q125 = item_item_texture

            newentity()


        else:
            print('Restart form')
    else:
        print('Restart form')




