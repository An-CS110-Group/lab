.data
shouldben1:	.asciiz "Should be -1, and firstposshift and firstposmask returned: "
shouldbe0:	.asciiz "Should be 0 , and firstposshift and firstposmask returned: "
shouldbe16:	.asciiz "Should be 16, and firstposshift and firstposmask returned: "
shouldbe31:	.asciiz "Should be 31, and firstposshift and firstposmask returned: "

.text
main:
	la	a1, shouldbe31
	jal	print_str
	lui	a1, 0x80000	# should be 31
	jal	first1posshift
	mv	a1, a0
	jal	print_int
	jal	print_space

	lui	a1, 0x80000
	jal	first1posmask
	mv	a1, a0
	jal	print_int
	jal	print_newline

	la	a1, shouldbe16
	jal	print_str
	lui	a1, 0x0010	# should be 16
	jal	first1posshift
	mv	a1, a0
	jal	print_int
	jal	print_space

	lui	a1, 0x0010
	jal	first1posmask
	mv	a1, a0
	jal	print_int
	jal	print_newline

	la	a1, shouldbe0
	jal	print_str
	li	a1, 1		# should be 0
	jal	first1posshift
	mv	a1, a0
	jal	print_int
	jal	print_space

	li	a1, 1
	jal	first1posmask
	mv	a1, a0
	jal	print_int
	jal	print_newline

	la	a1, shouldben1
	jal	print_str
	mv	a1, zero		# should be -1
	jal	first1posshift
	mv	a1, a0
	jal	print_int
	jal	print_space

	mv	a1, zero
	jal	first1posmask
	mv	a1, a0
	jal	print_int
	jal	print_newline

	li	a0, 10
	ecall

first1posshift:
	### YOUR CODE HERE ###
	li	a0, -1							# Return -1 if a1 = 0
	beq	a1, zero, first1posshift_exit	#
	
	li	a0, 31							# Start from 31
first1posshift_loop:
	blt	a1, zero, first1posshift_exit	# If the left-most bit is 1, exit
	slli	a1, a1, 1					# Otherwise, shift left a1
	addi	a0, a0, -1					# and update a0
	j	first1posshift_loop

first1posshift_exit:
	jr	ra

first1posmask:
	### YOUR CODE HERE ###
	li	a0, -1							# Return -1 if a1 = 0
	beq	a1, zero, first1posshift_exit	#

	li	a0, 31							# Start from 31
	li	t0, 0x80000000					# Set mask at 0x80000000
first1posmask_loop:
	and	t1, t0, a1						# Check the bit at pos a0
	bne	t1, zero, first1posmask_exit	#
	srli	t0, t0, 1					# If not found, shift right t0
	addi	a0, a0, -1					# and update a0
	j	first1posmask_loop

first1posmask_exit:
	jr	ra

print_int:
	mv	a1, a0
	li	a0, 1
	ecall
	jr	ra

print_str:
	li	a0, 4
	ecall
	jr	ra

print_space:
	li	a1, ' '
	li	a0, 11
	ecall
	jr	ra

print_newline:
	li	a1, '\n'
	li	a0, 11
	ecall
	jr	ra
