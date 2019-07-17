## MIPS Assignment #4
## Ch24-1.asm
## String Length
.data	
	prompt:	.asciiz	"\n\n(Exit if input nothing!)\nInput some string for count:"
	strL_prompt: .asciiz "The length of the string is:"
	str_space: .space 1024
	new_line: .asciiz "\n"
.text
.globl main
main:
	#Initialize
	li $t0, 0	
	la $s1, str_space
	move $t1, $s1
	#prompt user to input string	
	li $v0, 4
	la $a0, prompt
	syscall	
	li $v0, 8	
	li $a1, 24
	move $a0, $t1
	move $t2, $a0
	syscall	
	#if input nothing => exit
	la $a0, new_line
	lb $a0, ($a0)
	lb $t1, ($t1)
	beq $t1, $a0, done
	#loop for count string 
	loop:
		lbu $t3, 0($t2)
		nop
		beq $t3, $0, result
		addiu $t0, $t0, 1
		addiu $t2, $t2, 1
		j loop
	#print the result and loop for enter again.	
	result:
		li $v0, 4
		la $a0, strL_prompt
		syscall 	
		li $v0, 1
		#don't count the '\n' in string.
		subiu $t0, $t0, 1	
		move $a0, $t0
		syscall
		j main
#finish if user enter nothing.	
done:
	li	$v0, 10		# Exit the program.
	syscall
