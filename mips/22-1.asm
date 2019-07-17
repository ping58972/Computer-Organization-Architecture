## MIPS Assignment #3
## Ch22-1.asm
## program Miles per Gallon. repeatedly prompts the user for the number of miles traveled and the gallons of gasoline consumed, and then prints out the miles per gallon. Exit when the user enters 0.
.data
M_prompt:	.asciiz	"(If want to exit, enter 0)\nEnter the number of miles: "
G_prompt:	.asciiz	"Enter the number of gallons: "
E_prompt:	.asciiz	"\nYou've already Exit the program!\n"
R_prompt:	.asciiz	"You've traveled: "
mpp:		.asciiz	" mile per gallon.\n\n"
.text
.globl main
main:
	li	$v0, 4		# print prompt for entering miles
	la	$a0, M_prompt
	syscall	
	li	$v0, 5		# wait user enter number for miles
	syscall		
	beq	$v0, $0, done	# If user enter 0, end program
	nop
	or	$t1, $0, $v0	# put data of mile to $t1
	
	li	$v0, 4		# print prompt for entering gallons
	la	$a0, G_prompt
	syscall	
	li	$v0, 5		# wait user enter number for gallons
	syscall	
	beq	$v0, $0, done	# If user enter 0, end program
	nop
	or	$t2, $0, $v0	# put data of gallon to $t2
	
	li	$v0, 4		# print prompt for showing result
	la	$a0, R_prompt
	syscall
	
	divu	$t1, $t2	# miles / gallons -> $a0
	mflo	$a0
	li	$v0, 1		# print the integers of result of devision
	syscall
	li	$v0, 4
	la	$a0, mpp
	syscall
	j	main		# Loop until user entering zero number.
	
done:
	li	$v0, 4		# When exit the program print the exit prompt.
	la	$a0, E_prompt
	syscall
	li	$v0, 10		# Exit the program.
	syscall