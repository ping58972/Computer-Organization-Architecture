# Ch26-1.asm 
#Arithmetic Expression: 5u^2 - 12uv + 6v^2
         .data
 
prompt_u:	.asciiz "Enter values for u: "
prompt_v:	.asciiz "Enter values for v: "
result: 	.asciiz "The result is: "        
         .text
         .globl  main
main:
	la $a0, prompt_u	# print string
	li $v0, 4		# service 4
	syscall	
	li $v0, 5		# read int into $v0
	syscall
	move $s0,$v0		# save it in $s0
          
  	la $a0, prompt_v	# print string
	li $v0, 4           # service 4
	syscall
	li $v0, 5          # read int into $v0
	syscall
	move $s1,$v0       # save it in $s1
          
	#multiply3(5,u,u)
	li $a0, 5
	move $a1, $s0
	move $a2, $s0
	jal multiply3	#go to the function	
	move $s2, $v0
	
	#multiply3(12,u,v);
	li $a0, -12
	move $a1, $s0
	move $a2, $s1
	jal multiply3	#go to the function
	move $s3, $v0
	
	#multiply3(6,v,v); 
	li $a0, 6
	move $a1, $s1
 	move $a2, $s1
	jal multiply3	#go to the function
	move $s4, $v0

	#5u2 - 12uv + 6v2
	add $s5, $s2, $s3
	add $s5, $s5, $s4
	
	#print result
	li $v0, 4
	la $a0, result
	syscall
        li $v0, 1
        move $a0, $s5
        syscall 
        
        #finish program     
        li $v0, 10
        syscall
        
#multiply3(int p1, int p2, int p3)      
multiply3:   
	#p1*p2*p3
	mul $t0, $a0, $a1
	mul $t0, $t0, $a2        
	move $v0, $t0
	jr    $ra	# return p1*p2*p3
                              


