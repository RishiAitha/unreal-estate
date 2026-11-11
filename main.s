	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L5
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #8
	strh	r1, [r3]	@ movhi
	ldr	r4, .L5+4
	ldr	r6, .L5+8
	ldr	r5, .L5+12
	strh	r2, [r3, #8]	@ movhi
.L2:
	ldrh	r3, [r4, #2]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #2]	@ movhi
	mov	lr, pc
	bx	r6
	b	.L2
.L6:
	.align	2
.L5:
	.word	mgba_open
	.word	.LANCHOR0
	.word	driveStates
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L9
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #8
	strh	r1, [r3]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L10:
	.align	2
.L9:
	.word	mgba_open
	.size	initialize, .-initialize
	.global	shadowOAM
	.global	oldButtons
	.global	buttons
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	oldButtons, %object
	.size	oldButtons, 2
oldButtons:
	.space	2
	.type	buttons, %object
	.size	buttons, 2
buttons:
	.space	2
	.type	shadowOAM, %object
	.size	shadowOAM, 1024
shadowOAM:
	.space	1024
	.ident	"GCC: (devkitARM) 15.2.0"
