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
	.file	"state.c"
	.text
	.align	2
	.global	initStart
	.syntax unified
	.arm
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #928
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r1, .L4+40
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startBGPal
	.word	100696064
	.word	startBGTiles
	.word	startBGMap
	.word	83886592
	.word	houseTilesTestPal
	.word	100728832
	.word	generatedHousesTiles
	.word	hideSprites
	.word	shadowOAM
	.size	initStart, .-initStart
	.align	2
	.global	doStart
	.syntax unified
	.arm
	.type	doStart, %function
doStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doStart, .-doStart
	.align	2
	.global	initInstructions
	.syntax unified
	.arm
	.type	initInstructions, %function
initInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initInstructions, .-initInstructions
	.align	2
	.global	doInstructions
	.syntax unified
	.arm
	.type	doInstructions, %function
doInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doInstructions, .-doInstructions
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initGame, .-initGame
	.align	2
	.global	doGame
	.syntax unified
	.arm
	.type	doGame, %function
doGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doGame, .-doGame
	.align	2
	.global	initPause
	.syntax unified
	.arm
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initPause, .-initPause
	.align	2
	.global	doPause
	.syntax unified
	.arm
	.type	doPause, %function
doPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doPause, .-doPause
	.align	2
	.global	initMenu
	.syntax unified
	.arm
	.type	initMenu, %function
initMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initMenu, .-initMenu
	.align	2
	.global	doMenu
	.syntax unified
	.arm
	.type	doMenu, %function
doMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doMenu, .-doMenu
	.align	2
	.global	initWin
	.syntax unified
	.arm
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initWin, .-initWin
	.align	2
	.global	doWin
	.syntax unified
	.arm
	.type	doWin, %function
doWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	doWin, .-doWin
	.ident	"GCC: (devkitARM) 15.2.0"
