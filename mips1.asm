.data
 #tag: .asciiz "HELLO_WORLD"
 n: .asciiz "numero: "

.text
li $v0,4
la $a0,n
syscall

li $v0,7
syscall

mov.d $f2,$f0


li $v0,4
la $a0,n
syscall

li $v0,7
syscall

mov.d $f4,$f0

div.d $f6,$f2,$f4

li $v0,3
mov.d $f12,$f6

syscall