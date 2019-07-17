.data
size:   .word 10
array:  .word 23, -12, 45, 99, -32, 52, -72, 8, 13, -88

.text 
.globl main

main:
	lui $4, 0x1001
	lw $8, 0($4)
	addiu $4, $4, 4
	lw $9, 0($4)
	ori $12, $0, 0
	addu $10, $0, $9
	addu $11, $0, $9
	
loop:	beq $8, $12, exit
	sll $0, $0, 0
	addiu $4, $4, 4
	lw $9, 0($4)
	addiu $12, $12, 1
min:	slt $13, $9, $10
	beq $13, $0, max
	sll $0, $0, 0
	addu $10, $0, $9
	j loop

max:	slt $13, $11, $9
	beq $13, $0, loop
	sll $0, $0, 0
	addu $11, $0, $9
	j loop
	sll $0, $0, 0
	
	
exit: sll $0, $0, 0