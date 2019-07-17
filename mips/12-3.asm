## MIPS Assignment #1
## Ch12 3.asm
## Put 0xFFFFFFFF into register $1 
        .text
        .globl main

main:
        ori      $1, $0, 0x01	# put 0x01 into register $1
        srl       $1, $1, 1	# shift right logical by 4
        nor       $1, $1, $1	# using nor register flip $1 from 0 to 1.
## End of file
