## MIPS Assignment #1
## Ch13 2.asm
## Shifting and Adding 
        .text
        .globl main

main:
	#Adding 0x1000 16 times.
        ori $8, $0, 0 #0
        addi $8, $8, 0x1000 #1
	addi $8, $8, 0x1000 #2
	addi $8, $8, 0x1000 #3
	addi $8, $8, 0x1000 #4
	addi $8, $8, 0x1000 #5
	addi $8, $8, 0x1000 #6
	addi $8, $8, 0x1000 #7
	addi $8, $8, 0x1000 #8
	addi $8, $8, 0x1000 #9
	addi $8, $8, 0x1000 #10
	addi $8, $8, 0x1000 #11
	addi $8, $8, 0x1000 #12
	addi $8, $8, 0x1000 #13
	addi $8, $8, 0x1000 #14
	addi $8, $8, 0x1000 #15
	addi $8, $8, 0x1000 #16
   	
   	#Shifting to left 4
   	ori $9, $0, 0x1000 #1
   	sll $9, $9, 4	   #shift 4
   	
   	#Adding itself
   	ori $10, $0, 4096	#1
   	add $10, $10, $10	#2
   	add $10, $10, $10	#3
   	add $10, $10, $10	#4
   	add $10, $10, $10	#5
      
## End of file
