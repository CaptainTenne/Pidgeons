execute unless items entity @s weapon.mainhand minecraft:book run function pidgeons:use_sealed_book/return_sealed_book {hand:weapon.offhand}
execute if items entity @s weapon.mainhand minecraft:book run function pidgeons:use_sealed_book/return_sealed_book {hand:weapon.mainhand} 
