#c) Reverse an Array
#Write a MIPS assembly program to reverse an array of 6 integers. The original array is stored at arr, and the reversed array should be stored in rev_arr.

.data
arr: .word 1, 2, 3, 4, 5, 6
rev_arr: .space 24 

.text
li $t0, 6 #number of elements
li $t1, 0 #index counter
li $t2, 5 #last index

la $t3, arr
la $t4, rev_arr

loop:
slt $t5, $t1, $t0
beq $t5, $zero, exit

sll $t6, $t1, 2
add $t6, $t6, $t3	
lw $t7, 0($t6)

sll $t8, $t2, 2
add $t8, $t8, $t4
sw $t7, 0($t8)

addi $t1, $t1, 1
subi $t2, $t2, 1

j loop

exit:

