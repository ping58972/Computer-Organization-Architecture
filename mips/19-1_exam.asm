#ch19-1
.data
array: .space 100

.text 
.globl main

main:

	lui $8, 0x1001
	ori $9, $0, 0
	ori $10, $0, 25
	
loop:	beq $9, $10, exit
	sll $0, $0, 0
	sb $9, 0($8)
	sll $0, $0, 0
	addi $8, $8, 4
	addi $9, $9, 1
	j loop

exit: sll $0, $0, 0