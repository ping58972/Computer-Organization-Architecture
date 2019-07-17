## MIPS Assignment #3
## 21-2.asm
## Ch21-2.asm
## program Pair-wise Addition, implement a loop that adds corresponding elements in the first two arrays and stores the result in the corresponding element of the result array. 
## Registers:
##  $t0 -- pointer to size of array
##  $t1 -- pointer to array1
## $t2 -- pointer to array2
## $s0 -- pointer to result 
## $t4-7 -- they are temporary availible
         .data
size:    .word       7
array1:  .word     -30, -23, 56, -43, 72, -18, 71
array2:  .word      45,  23, 21, -23, -82,  0, 69
result:  .word       0,   0,  0,   0,   0,  0,  0

	.text
        .globl  main
		 
# Initialize each availible
main:
	la $t0, size
	la $t1, array1
	la $t2, array2
	la $s0, result
	li $t3, 0	
	lw $t4, 0($t0)
	nop

loop:	beq $t3, $t4, done #if $t3 == size of array, exit.
	nop
	
	lw $t5, 0($t1)
	lw $t6, 0($t2)
	addu $t7, $t5, $t6 #$t7 <- add each corresponding elements 
	sw $t7, 0($s0)	   #store resultof adding to $s0.
	nop
	
	#Increasing the index and address of arrays
	addi $t3, $t3, 1
	addi $t1, $t1, 4
	addi $t2, $t2, 4
	addi $s0, $s0, 4
	nop
	
	# Jump to loop for continue	
	j	loop 
done:	nop	# end the program.
	