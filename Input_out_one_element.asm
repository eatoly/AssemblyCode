.text

main:

la $a0, prompt_input_element
li $v0, 4
syscall

li $v0, 5
syscall

#stores the element
la $t0, list
sw $v0, 0($t0)

#prints the output message
la $a0, prompt_output_element
li $v0, 4
syscall

#prints element(s)
la $t0, list

output_element:
lw $a0, 0($t0)
li $v0, 1
syscall

#exit function
li $v0, 10
syscall

.data
list: .space 100
size: .word 0
dataflag1: .word 0x12345678
charflag1: .ascii "abc"
dataflag4: .word 0x22227890
prompt_input_size: .asciiz "Please enter the size of the list: \n"
prompt_input_element: .asciiz "Please enter the element\n"
prompt_output_element: .asciiz "The element(s) in the array are:\n"
dataflag2: .word 0x99996666