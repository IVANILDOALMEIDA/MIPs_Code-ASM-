.data
tag:.asciiz "Insira um valor: "
par:.asciiz "PAR"
impar:.asciiz "IMPAR"

.text
#insercao dos dados
li $t0,2
li $v0,4
la $a0,tag
syscall

li $v0,5
syscall

div $v0,$t0
mfhi $t1

beq $t1,$zero,tag1
	li $v0,4
	la $a0,impar
	syscall
	j sair
	tag1: 
		li $v0,4
		la $a0,par
		syscall
		
	sair: li $v0,10
		
