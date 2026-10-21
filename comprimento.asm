.data
msg1: .asciiz "Digite o raio da circunferência: "
msg2: .asciiz "O cumprimento da circunferência é: "
.text
.globl main
main:	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1,3 
	li $t2,2
	
	mul $t3,$t2,$t1
	mul $t4,$t3,$t0
	
	li $v0, 4
    	la $a0, msg2
    	syscall
	
	li $v0, 1
	move $a0, $t4     
	syscall
	
	li $v0, 10
