## strlen.asm
##
## Count the characters in a string
##
## Registers:
##  $8 -- count
##  $9 -- pointer to the char
## $10 -- the char (in low order byte)

         .text
         .globl  main
		 
# Initialize
main:    ori      $8,$0,0        #  count = 0
         lui      $9,0x1001      #  point at first char

# while not ch==null do
loop:    lbu      $10,0($9)      # get the char
         sll      $0,$0,0        # branch delay
           
         beq      $10,$0,done    # exit loop if char == null
         sll      $0,$0,0        # branch delay
	#sb	$10, 0($11)
         addiu    $8,$8,1        # count++
         addiu    $9,$9,1        # point at the next char

         j        loop
         sll      $0,$0,0        # branch delay slot

# finish
done:    sll      $0,$0,0        # target for branch

         .data
string:  .asciiz  "Time is the ghost of space."