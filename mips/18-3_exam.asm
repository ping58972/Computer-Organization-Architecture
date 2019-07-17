#ch18-3

.text
.globl main

main:

		
	ori $8, $0, 30
	
	
	slti $3, $8, 41
	beq $3, $0, second
	ori $13, $0, 19
	slt $3, $13, $8
	beq $3, $0, second
	sll $0, $0, 0
	j out
	sll $0, $0, 0
	
second: slti $3, $8, 81
	beq $3, $0, out
	ori $13, $0, 59
	slt $3, $8, $13
	

		
out: 
	sll $0, $0, 0
	