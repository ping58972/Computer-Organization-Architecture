## Ch25-1.asm
# Evaluate the expression 3ab - 2bc - 5a + 20ac - 16
.data	
	a:      .word  1
	bb:     .word  2
	c:	.word  3
	.text
        .globl  main
main: 
	#push 3ab
	lw $t0, a
	lw $t1, bb
	li $t2, 3
	mul $t0, $t0, $t1
	mul $t0, $t0, $t2
	subu $sp, $sp, 4
	sw $t0, ($sp)
	#push -2bc
	lw $t0, bb
	lw $t1, c
	li $t2, -2
	mul $t0, $t0, $t1
	mul $t0, $t0, $t2
	subu $sp, $sp, 4
	sw $t0, ($sp)
	#push -5a
	lw $t0, a
	li $t1, -5
	mul $t0, $t0, $t1
	subu $sp, $sp, 4
	sw $t0, ($sp)
	#push +20ac
	lw $t0, a
	lw $t1, c
	li $t2, 20
	mul $t0, $t0, $t1
	mul $t0, $t0, $t2
	subu $sp, $sp, 4
	sw $t0, ($sp)
	#pop 20ac-16
	li $t1, -16
	lw $t0, ($sp)
	addu $sp, $sp, 4
	addu $t1, $t1, $t0
	#pop -5a+20ac-16
	lw $t0, ($sp)
	addu $sp, $sp, 4
	addu $t1, $t1, $t0
	#pop -2bc-5a+20ac-16
	lw $t0, ($sp)
	addu $sp, $sp, 4
	addu $t1, $t1, $t0
	#pop 3ab-2bc-5a+20ac-16
	lw $t0, ($sp)
	addu $sp, $sp, 4
	addu $t1, $t1, $t0	
done:	
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 10
	syscall