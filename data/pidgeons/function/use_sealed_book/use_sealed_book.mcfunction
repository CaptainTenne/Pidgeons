execute if score @s sealed_book_hold matches 0 run scoreboard players set @s sealed_book_hold 21
execute if score @s sealed_book_hold matches 1 run function pidgeons:use_sealed_book/use_sealed_book_return_book
execute if score @s sealed_book_hold matches 21 run playsound block.flowering_azalea.hit
scoreboard players remove @s sealed_book_hold 1

advancement revoke @s only pidgeons:use_sealed_book