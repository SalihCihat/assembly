#d) String Length Calculation
#Write a MIPS assembly program to calculate the length of a null-terminated string stored at the label str. Store the length in register $t3.

.data

str: .asciiz "sorular cok zor"  

.text
la $t0, str 	#string baslangic adresi
li $t1, 0 	#karakter counter
 
loop:
lb $t2, 0($t0)
beq $t2, $zero, exit

addi $t1, $t1, 1 #karakter counterı arttır
addi $t0, $t0, 1 #bi sonraki karakter adresine git
j loop

exit:
move $t3, $t1