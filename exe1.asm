.data
.text


li  $a0, 4
jal fact

move $a0, $v0
li $v0, 1
syscall


fact:
	ble $a0,1,base
	
	addi $sp,$sp,-8
	
	sw $a0,0($sp)
	sw $ra,4($sp)
	
	addi $a0,$a0,-1
	jal fact
	
	lw $a0,0($sp)
	lw $ra,4($sp)
	
	addi $sp,$sp,8
	
	mul $v0,$v0,$a0
	
	base: 
	
	li $v0,1
	
	jr $ra
	
	
	



