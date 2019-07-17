#ch17-3

.data
	top: .byte 0
	buttom: .byte 101
	
	 .text
	 .globl main
main:
	lui $4, 0x1001
	lb $5, 0($4)
	lb $6, 1($4)
	
	ori $8, $0, 0
	ori $9, $0, 0
	
loop:	beq $8, $6, exit
	addu $9, $9, $8
	addiu $8, $8, 1
	j loop
		  
exit: sll $0, $0, 0  