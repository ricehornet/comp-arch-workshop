	.cpu cortex-m0plus
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	my_exp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	my_exp, %function
my_exp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	movs	r3, #1
	str	r3, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #8]
	b	.L2
.L3:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	muls	r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
.L2:
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	cmp	r2, r3
	blt	.L3
	ldr	r3, [sp, #12]
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
	.size	my_exp, .-my_exp
	.data
	.align	2
	.type	my_a, %object
	.size	my_a, 4
my_a:
	.word	10
	.align	2
	.type	my_x, %object
	.size	my_x, 4
my_x:
	.word	3
	.text
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L7
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	movs	r1, r3
	movs	r0, r2
	bl	my_exp
	movs	r3, r0
	movs	r0, r3
	@ sp needed
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	my_a
	.word	my_x
	.size	main, .-main
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
