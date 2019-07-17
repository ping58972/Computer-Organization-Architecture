## Program to bitwise OR, AND, and XOR two patterns 
        .text
        .globl  main

main:
        ori     $15, $0,0x0FA5       # put bit pattern register into $15
        ori      $8,$15,0x368F       # OR with second pattern
        andi     $9,$15,0x368F       # AND with second pattern
        xori    $10,$15,0x368F       # XOR with second pattern

## End of file