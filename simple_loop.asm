.data
label: .asciiz "insira o valor de fim: "
label2: .asciiz "\nResultado: "
.text
li $v0,4
la $a0,label
syscall

li $v0,5
syscall
move $t0,$v0


move $t1,$zero
move $t2,$zero

loop:
	bgt $t1,$t0,exit
	li $v0,1
	move $a0,$t1
	syscall
	add $t2,$t2,$t1
	addi $t1,$t1,1
	j loop
	
	exit:
	li $v0,4
	la $a0,label2
	syscall
	
	li $v0,1
	move $a0,$t2
	syscall