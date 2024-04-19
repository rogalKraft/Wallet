recipe take @a global:coinbag
advancement revoke @s only global:coinbag
clear @s minecraft:knowledge_book 1
# YOUR LOGIC HERE
give @s ghast_tear{CustomModelData:6008,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FF7000","text":"Wallet"}],"text":""}'},tags:["coinbag"],ui:1b}