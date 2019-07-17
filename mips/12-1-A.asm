## MIPS Assignment #1
## Ch12 1-A.asm
## Put DEADBEEF into register $1 
        .text
        .globl main

main:
        ori      $1, $0, 0xDEAD	# put 0xDEAD into register $1
        sll      $1, $1, 16	# shift left logical by 16
	ori      $1, $1, 0xBEEF	# put 0xBEEF into register $1
## End of file