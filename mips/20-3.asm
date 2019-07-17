## MIPS Assignment #3
## Ch20-3.asm
## Space Removal
## Registers:
##  $8 -- pointer to the original string
##  $9 -- pointer to the resulting string
## $10 -- space char
## $11 -- temporary to load char to store to $9
         .data
string:  .asciiz  "Is  this a dagger    which I see before me?"
         .text
         .globl  main
		 
# Initialize
main:    ori	$10, $0, 0x20
         lui    $8, 0x1001      #  point at first original string
         lui	$1, 0x1001	#  pointer to the resulting string
	 ori	$9, $1, 0x40

# while not ch==null do
loop:    
	 lbu      $11,0($8)      # get the char
	 sll      $0,$0,0        # branch delay 
	# If char == " " skip it. 
	 beq	$11, $10, space
         sll      $0,$0,0        # branch delay      
        # If char == "\0" end program. 
         beq      $11,$0, done    # exit loop if char == null
         sll      $0,$0,0        # branch delay 
                        
	 sb	$11, 0($9)      	
	addi	$8, $8, 1       # point at the next original char
        addi   $9, $9, 1        # point at the next resulting char

         j        loop
         sll      $0,$0,0        # branch delay slot

space:	
	addi   $8, $8, 1        
	j	loop
	sll      $0,$0,0        # branch delay slot
	 
done:    sll      $0,$0,0        # target for branch

