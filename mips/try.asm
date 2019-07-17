.data

string:  .asciiz  "Aaa Bbbsty  cccc f"
#we:	.word 21
array:	.space 2000


.text
         .globl  main
		 
# Initialize
main:   
	lui $8, 0x1001
	lui $1, 0x1001
	ori $11, $1, 0x20
	#la
	#la  $11, array
	#la	$8, string
	lbu $9, 0($8)
	lbu $10, 1($8)
	lbu $14, 2($8)
#	la $15, we
	sb	$9, 0($11)
	sb	$10, 1($11)
	sb	$14, 2($11)
	addiu	$8, $8, 4
	lbu $9, 0($8)
	sb	$9, 3($11)