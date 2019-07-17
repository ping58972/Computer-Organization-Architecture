.data
prompt:     .asciiz     "Enter string ('.' to end) > "
dot:        .asciiz     "."
eqmsg:      .asciiz     "strings are equal\n"
nemsg:      .asciiz     "strings are not equal\n"

str1:       .space      80
str2:       .space      80

    .text

    .globl  main
main:
    # get first string
    la      $s2,str1
    move    $t2,$s2
    jal     getstr

    # get second string
    la      $s3,str2
    move    $t2,$s3
    jal     getstr

# string compare loop (just like strcmp)
cmploop:
    lb      $t2,($s2)                   # get next char from str1
    lb      $t3,($s3)                   # get next char from str2
    bne     $t2,$t3,cmpne               # are they different? if yes, fly

    beq     $t2,$zero,cmpeq             # at EOS? yes, fly (strings equal)

    addi    $s2,$s2,1                   # point to next char
    addi    $s3,$s3,1                   # point to next char
    j       cmploop

# strings are _not_ equal -- send message
cmpne:
    la      $a0,nemsg
    li      $v0,4
    syscall
    j       main

# strings _are_ equal -- send message
cmpeq:
    la      $a0,eqmsg
    li      $v0,4
    syscall
    j       main

# getstr -- prompt and read string from user
#
# arguments:
#   t2 -- address of string buffer
getstr:
    # prompt the user
    la      $a0,prompt
    li      $v0,4
    syscall

    # read in the string
    move    $a0,$t2
    li      $a1,79
    li      $v0,8
    syscall

    # should we stop?
    la      $a0,dot                     # get address of dot string
    lb      $a0,($a0)                   # get the dot value
    lb      $t2,($t2)                   # get first char of user string
    beq     $t2,$a0,exit                # equal? yes, exit program

    jr      $ra                         # return

# exit program
exit:
    li      $v0,10
    syscall