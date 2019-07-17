## MIPS Assignment #2
## Ch14 2.asm
## Program to calculate: 17xy - 12x - 6y + 12
## initialize x=0, y=1 
## Register Use:
## $7 base register, address of x
## $8 x
## $9 value of the polynomial
## $10 result
## $11, $12 temporary

.data
x:      .word   0	#  Edit this line to change the value of x
y:  	.word   1	#  Edit this line to change the value of y           
        .text
        .globl  main

main: 
        lui	$7, 0x1001	# Init base register to $7
        lw	$8, 0($7)	# Load x
        lw	$9, 4($7)	# Load y
	mult	$8, $9		# x*y
	mflo	$10		# $10 <- x*y
        ori	$11, $0, 17	# $11 <- 17
        mult	$10, $11 	# 17*x*y
        mflo	$10		# $10 <- 17*x*y
        ori	$11, $0, 12	# $11 <- 12
        mult	$11, $8		# 12*x
        mflo	$11		# $11 <- 12*x
        ori	$12, $0, 6	# $12 <- 6
        mult	$12, $9		# 6*y
        mflo	$12		# $12 <- 6*y
        sub	$10, $10, $11	# 17*x*y - 12*x
        sub	$10, $10, $12	# 17*x*y - 12*x - 6y
        addi	$10, $10, 12	# 17*x*y - 12*x - 6y +12
        			#  Result is placed to $10.
## End of file
