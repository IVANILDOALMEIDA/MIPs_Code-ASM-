.data
 n1: .asciiz "num: "
 value: .double 1.4
.text
la $v0,4
la $a0,n1
syscall
la $v0,7
syscall
mov.d $f2,$f0

l.d $f4,value

add.d $f12,$f2,$f4

la $v0,3
syscall
