## MIPS Assignment #2
## Ch16-1.asm
## Program to calculate: (12+97+133+82+236)/5
         .data
b1:     .byte 12
b2:     .byte 97
b3:     .byte 133
b4:     .byte 82
b5:     .byte 236
        .text
main:   
        ori $7,$0,0x5      # Initialize 5 for division later on
        lui $8,0x1001      # Save base address
        
        lbu $9,0($8)       # Load byte 1
        lbu $10, 1($8)     # Load byte 2
        lbu $11, 2($8)     # Load byte 3
        lbu $12, 3($8)     # Load byte 4
        lbu $13, 4($8)     # Load byte 5
        
        addu $10, $9, $10  # $10 <- b1+b2
        addu $10, $10, $11 # $10 <- b1+b2+b3
        addu $10, $10, $12 # $10 <- b1+b2+b3+b4
        addu $10, $10, $13 # $10 <- b1+b2+b3+b4+b5
        divu $10, $7       # (b1+b2+b3+b4+b5)/5
        mflo $10           # $10 <- result
	sb   $10, 1($8)    # storing result to memory
## End of file
