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
	push	{r7, lr}
	ldr	r3, .L9
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r7, #1
	ldr	r2, .L9+4
	strh	r1, [r3]	@ movhi
	ldr	r4, .L9+8
	ldr	r5, .L9+12
	ldr	r6, .L9+16
	strh	r2, [r3, #8]	@ movhi
.L3:
	ldrh	r2, [r4, #2]
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	strh	r2, [r4]	@ movhi
	cmp	r3, #0
	ldrh	r3, [r6, #48]
	strh	r3, [r4, #2]	@ movhi
	bne	.L2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L2
	mov	lr, pc
	bx	r3
	strb	r7, [r5, #4]
.L2:
	ldr	r3, [r5, #12]
	mov	lr, pc
	bx	r3
	b	.L3
.L10:
	.align	2
.L9:
	.word	mgba_open
	.word	-16376
	.word	.LANCHOR0
	.word	.LANCHOR1
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
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L13+4
	strh	r1, [r3]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L14:
	.align	2
.L13:
	.word	mgba_open
	.word	-16376
	.size	initialize, .-initialize
	.global	shadowOAM
	.global	current_state
	.global	game_states
	.global	oldButtons
	.global	buttons
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	current_state, %object
	.size	current_state, 16
current_state:
	.word	0
	.byte	0
	.space	3
	.word	initStart
	.word	doStart
	.type	game_states, %object
	.size	game_states, 96
game_states:
	.word	0
	.byte	0
	.space	3
	.word	initStart
	.word	doStart
	.word	1
	.byte	0
	.space	3
	.word	initInstructions
	.word	doInstructions
	.word	2
	.byte	0
	.space	3
	.word	initGame
	.word	doGame
	.word	3
	.byte	0
	.space	3
	.word	initPause
	.word	doPause
	.word	4
	.byte	0
	.space	3
	.word	initMenu
	.word	doMenu
	.word	5
	.byte	0
	.space	3
	.word	initWin
	.word	doWin
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
