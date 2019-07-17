## MIPS Assignment #1
## Ch13 4.asm
## Arithmetic Expression: 3x - 5y, initialize x=1, y=2
        .text
        .globl main

main:
        ori      $8, $0, 0x01	# initialize $8(x) to 1
        ori      $9, $0, 0x02	# initialize $9(y) to 2
        or	$6, $0, $8	# set x to $6 for temporary
        or	$7, $0, $9	# set y to $7 for temporary
        sll	$8, $8, 1	# 2*x by shift $8 left l
        add	$8, $8, $6	# 2*x + x= 3x by add $6     
        sll	$9, $9, 2	# 4*y by shift $9 left 2
        add	$9, $9, $7	# 4*y + y =5y by add $7         
        sub	$10, $8, $9	# 3x - 5y then store to $10
        
## End of file