#b) Count Negative Numbers
#Write a MIPS assembly program that counts the number of negative integers in an array of 10 elements. The array is stored at the label nums, and the result should be stored in memory at count.

.data
nums: .word -11 2 3 -5 -1 0 23 -37 4 6 
count: .word 0

.text
li $t1, 10 #number of elements
li $t2, 0 #index counter
li $s1, 0 #number of nmegative integers

la $t3, nums
la $t4, count

loop:
slt $t5, $t2, $t1
beq $t5, $zero, exit

sll $t5, $t2, 2
add $t5, $t5, $t3

lw $t6, 0($t5)
addi $t2, $t2, 1

slt $t7, $t6, $zero
beq $t7, $zero, loop

addi $s1, $s1, 1
j loop

exit:
sw $s1, 0($t4)  # count değişkenine negatif sayı sayısını kaydet