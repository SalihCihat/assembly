main:
li $t0, 2
li $t1, 20
li $t3, 0

loop:
add $t3, $t3, $t0
addi $t0, $t0, 2
slt $t4, $t1, $t0
beq $t4, $zero, loop 

exit: 