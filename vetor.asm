.data
array: .space 16

.text
move $t0,$zero
move $t1,$zero
li $t3,16

#carregar o array
loop:
	beq $t0,$t3,pre_print
 		sw $t1,array($t0)
 		addi $t0,$t0,4
 		addi $t1,$t1,4
 		j loop
 		
       pre_print: li $t0,0
 		
 	print:
 		beq $t0,$t3,exit
 		li $v0,1
 		lw $a0,array($t0)
 		syscall
 		addi $t0,$t0,4
 		j print
 		
 			exit:
 		
