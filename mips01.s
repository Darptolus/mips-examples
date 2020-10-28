.data

.text
main:

	li $t0 , 4				
	li $t1 , 6  
	add $t2, $t1, $t0

	li $v0, 10            # Exit
	syscall