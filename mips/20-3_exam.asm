#Ch20-3

.data
string: .asciiz "Is this a dagger    which I see before me?"

.text
.globl main
main:
	lui $8, 0x1001
	lui $12, 0x1001
	ori $9, $0, 0
	ori $10, $0, 32
	ori $12, $12, 0x40
loop:	
	lb $11, 0($8)
	beq $11, $0, exit
	sll $0, $0, 0
	
	beq $11, $10, space
	sll $0, $0, 0
	
	
	sb $11, 0($12)
	sll $0, $0, 0
	addiu $8, $8, 1

	addiu $12, $12, 1
	j loop
	sll $0, $0, 0
	
space: 
	addiu $8, $8, 1
	j loop
	sll $0, $0, 0
	
exit: sll $0, $0, 0