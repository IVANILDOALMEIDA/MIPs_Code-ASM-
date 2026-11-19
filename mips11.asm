.data
array: .space 16
.text
move $t0,$zero
li $t1,2

preencher:
	bgt $t0,16,sair
		sw $t1,array($t0)
		addi $t0,$t0,4
		addi $t1,$t1,2
		j preencher
	sair:
		li $t0,0
		loop2:
			bne $t0,16,imprimir
			li $v0,10
			syscall
			
			imprimir:
				li $v0,1
				lw $t1,array($t0)
				move $a0,$t1
				syscall
				addi $t0,$t0,4
				j loop2
		



