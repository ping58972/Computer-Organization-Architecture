.data
xx:      .word   1           #  Edit this line to change the value of x
poly:   .word   0            #  Result is placed here.
        .text
        .globl  main

main: 

lw $10, xx

addi $11, $10, 10

