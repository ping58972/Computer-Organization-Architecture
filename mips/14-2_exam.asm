#Ch14-2

	.data
		x:	.word 1
	.text
	.globl main
	
main:
	lui $8, 0x1001
	lw $9, 0($8)
	
	ori $10, $0, 3
	ori $11, $0, 7
	
	mult $9, $10
	mflo $10	
	addu $10, $10, $11
	
	sll $11, $9, 1
	addiu $11, $11, 8
	
	div $10, $11
	mflo $10
	
	
