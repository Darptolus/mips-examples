.data
string3: .asciiz "Sum:"
endLine: .asciiz "\n"
num1: .word 4
num2: .word 6

.text
main:

  lw $t0 , num1				
	lw $t1 , num2  
	add $t2, $t1, $t0

	li $v0, 1			        # Print integer
	move $a0, $t2			    # Store result for printing
	syscall

  li $v0, 4
	la $a0, endLine       # Print NewLine
	syscall
	
		 
	li $v0, 10            # Exit
	syscall
	
	syscall
	