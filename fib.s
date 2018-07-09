.data
.text
main:
	#--------------------------------------#
	#  \^o^/   Write your code here~  \^o^/#
	#--------------------------------------#
	addi $a0, $zero, 25
	jal fib
	add $t0, $v0, $zero

	li $v0, 10		# program stop
	syscall
fib:
	#--------------------------------------#
	#  \^o^/   Write your code here~  \^o^/#
	#--------------------------------------#
	addi $t2, $zero, 1	# int a=1;
	addi $t3, $zero, 0	# int b=0;
	addi $t5, $zero, 1	# for (i=1; i<n; i++) i=1
Loop:
	slt $t6, $t5, $a0	# for (i=1; i<n; i++) i<n
	beq $t6, $zero, Loopend	# for (i=1; i<n; i++) i<n
	add $t4, $t2, $t3	# t=a+b;
	add $t3, $t2, $zero	# b=a;
	add $t2, $t4, $zero	# a=t;
	addi $t5, $t5, 1	# for (i=1; i<n; i++) i++
	j Loop
Loopend:
	add $v0, $t2, $zero	# result=a;
	jr $ra			# return result;	
