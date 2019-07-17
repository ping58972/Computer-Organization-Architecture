## MIPS Assignment #2
## Ch14 2.asm
## Program to calculate (3x+7)/(2x+8), initialize x=1
##
## Register Use:
##  $10  for x and the result

        .text
        .globl  main

main:
        ori      $10,   $0,  1	# put x into $10
        ori	 $8,	$0,  3	# $8 <- 3
        ori	 $9,	$0,  2	# $9 <- 2
        mult	 $10, 	$8	# x*3
        mflo	$11		# lo -> $11
        addi     $11, 	$11, 7	# $11 <-(3x+7)
        mult	 $10, 	$9	# x*2
        mflo	$12		# lo -> $12
        addi     $12,   $12,  8	# $12 <- (2x+8)
        div      $11,   $12	# hilo = (3x+7)/(2x+8)
        mflo     $10		# $10  = quotient
        mfhi     $11		# $11  = remainder

## End of file