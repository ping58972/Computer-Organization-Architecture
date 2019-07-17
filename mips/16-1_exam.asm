#ch16-1

.data
	b1: .byte 12
	b2: .byte 97
	b3: .byte 133
	b4: .byte 82
	b5: .byte 236
	
	.text
	.globl main
main:
	lui $4, 0x1001
	lbu $8, 0($4)
	lbu $9, 1($4)
	lbu $10, 2($4)
	lbu $11, 3($4)
	lbu $12, 4($4)
	
	add $8, $8, $9
	add $8, $8, $10
	add $8, $8, $11
	add $8, $8, $12
	
	ori $9, $0, 5
	div $8, $9
	mflo $8
	
	