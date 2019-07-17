## MIPS Assignment #3
## Ch19-1.asm
## Program to store 0 t0 24 to memory address.
## Regesters
## $6 base address
## $7 start number
## $8 last nember
         .data
array:   .space 100
         .text
         .globl main
main:          
        lui $6,0x1001      # Save base address
        ori $7, $0, 0      # Initialize $7 <- 0
        ori $8, $0, 25	   # set $8 <- 25
        
        loop:
        beq	$7, $8, exit
        sll	$0, $0, 0
        sw	$7, 0($6)
        sll	$0, $0, 0
        addiu	$7, $7, 1
        addiu	$6, $6, 4
        
        j loop
        sll	$0, $0, 0
       
         exit:               # Stop the programming
         sll $0, $0, 0
          
## End of file
