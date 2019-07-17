#ch15-2
#17xy - 12x - 6y +12

.data
	x: .word 1
	y: .word 1
	
	.text
	.globl main
main:
	lui $4, 0x1001
	lw $5, 0($4)
	lw $6, 4($4)
	
	mult $5, $6
	mflo $8
	ori $9, $0, 17
	mult $8, $9
	mflo $9
	
	ori $8, $0, 12
	mult $5, $8
	mflo $8
	
	ori $10, $0, 6
	mult $6, $10
	mflo $10
		
	sub $8, $9, $8
	sub $8, $8, $10
	addi $8, $8, 12
	