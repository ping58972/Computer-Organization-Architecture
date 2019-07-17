## MIPS Assignment #3
## Ch18-3.asm
## Check that   20 <= temp <= 40   60 <= temp <= 80
## Set flag to 1 if in range, to 0 if out of range
## Registers:
## $5 --- temperature
## $3 --- in/out range indicator flag
## $8 --- scratc

.data
w1:	.word	20
w2:	.word	100	 
         .text
        .globl  main

main:     
	# Set range indicator to 1
	ori	$3, $0, 1       # set $3 to 1
	lui	$4, 0x1001	# Init base register to $7 
	lw 	$5, 0($4)	# Laod 30 for test.
       #lw 	$5, 4($4)	# Laod 100 for test.
        
        # Test  60 <= temp <= 80
        sltiu	$8, $5, 81
        beq	$8, $0, out
        sll	$0, $0, 0      
        sltiu	$8, $5, 60
        beq	$8, $0, cont
        sll	$0, $0, 0
        
        # Test  20 <= temp <= 40
        sltiu	$8, $5, 41
        beq	$8, $0, out
        sll	$0, $0, 0      
        sltiu	$8, $5, 20
        beq	$8, $0, cont
        sll	$0, $0, 0

   out:	ori	$3, $0, 0  #  clear flag to 0
   cont: sll	$0, $0, 0  # Stop the programming
                  
## End of file
