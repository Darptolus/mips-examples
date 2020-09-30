.data
string1: .asciiz "Enter first number:"
string2: .asciiz "Enter second number:"
string3: .asciiz "Sum:"
endLine: .asciiz "\n"

.text
main:

	li $v0, 4				      # Print string1 
	la $a0, string1  
	syscall

	li $v0, 5	 			      # Read integer
	syscall
	
	move $t0, $v0         # Store value in register $t0
	
	li $v0, 4
	la $a0, string2        
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0             
	
	li $v0, 4
	la $a0, string3
	syscall
	
	add $t2, $t1, $t0			# Perform addition
	li $v0, 1			        # Print integer
	move $a0, $t2			    # Store result for printing
	syscall

  li $v0, 4
	la $a0, endLine       # Print NewLine
	syscall
	
		 
	li $v0, 10            # Exit
	syscall
	