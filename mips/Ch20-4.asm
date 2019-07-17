#Ch20-4
#array maximum and minimum

.data 
size:	.word 8
array: .word 23, -12, 45, -32, 52, -72, 8, 13

.text
.globl main
main:
	lui $4, 0x1001
	lw $5, 0($4)
	ori $5, $0, 9
	ori $7, $0, 0
	lw $6, 4($4)
	
	addu $10, $0, $6
	addu $11, $0, $6
	
loop:	addi $7, $7, 1
	addi $4, $4, 4
	lw $6, 0($4)
	beq $7, $5, exit
		 
max:	slt $12, $10, $6 
	blez $14, min
	sll $0, $0, 0
	#addu 
	addi $4, $4, 4
	j loop
min:	 or $10, $0, $6
	or $11, $0, $8
	addi $4, $4, 4
	j loop	
exit: sll $0, $0, 0 