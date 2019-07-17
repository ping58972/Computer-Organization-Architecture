## MIPS Assignment #2
## Ch17-3.asm
## Program to calculate: sum: 1+2+3...+100
         .data
start:	 .word 1
top:     .word 100
         .text
main:          
        lui $14,0x1001      # Save base address
        ori $15, $0, 0      # Initialize $15 <- 0
        lw  $16, 0($14)     # Load $16 <- 1
        lw  $17, 4($14)     # Load $17 <- 100
         loop:
         add $15, $15, $16  # sum 1+2+3...+100 and put to $15
         beq $16, $17, end  # If start == top, go to end
         addi $16, $16, 1   # Increase start by 1
         j loop             # jump to loop.
         end:               # Stop the programming
         sll $0, $0, 0
          
## End of file
