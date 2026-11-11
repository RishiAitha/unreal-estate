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
	.global	initPause
	.syntax unified
	.arm
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #24
	ldr	r3, .L3
	ldr	r0, .L3+4
	ldr	r1, .L3+8
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	shadowOAM
	.word	16448
	.word	-16296
	.size	initPause, .-initPause
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
	.global	initInstructions
	.syntax unified
	.arm
	.type	initInstructions, %function
initInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #2128
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	instructionsBGPal
	.word	100696064
	.word	instructionsBGTiles
	.word	instructionsBGMap
	.size	initInstructions, .-initInstructions
	.align	2
	.global	initWin
	.syntax unified
	.arm
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	winBGPal
	.word	100696064
	.word	winBGTiles
	.word	winBGMap
	.size	initWin, .-initWin
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
	ldr	r4, .L16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r3, #1520
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+28
	ldr	r1, .L16+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+40
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	startBGPal
	.word	100696064
	.word	startBGTiles
	.word	startBGMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.size	initStart, .-initStart
	.align	2
	.global	doGame
	.syntax unified
	.arm
	.type	doGame, %function
doGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L19
	ldr	r3, .L24+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L24+8
	addeq	r3, ip, #64
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L19:
	ldr	r3, .L24+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L24+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	updatePlayer
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	doGame, .-doGame
	.align	2
	.global	doPause
	.syntax unified
	.arm
	.type	doPause, %function
doPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L32
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L27
	ldr	r3, .L32+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L27
	mov	r1, #1
	mov	lr, #512
	ldr	ip, .L32+8
	ldr	r2, .L32+12
	ldr	r0, .L32+16
	add	r3, ip, #48
	strh	lr, [r0]	@ movhi
	str	r1, [r2]
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
.L27:
	ldr	r3, .L32+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	doPause, .-doPause
	.align	2
	.global	doStart
	.syntax unified
	.arm
	.type	doStart, %function
doStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L50
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L44
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L44
	str	lr, [sp, #-4]!
	ldr	lr, .L50+8
	ldr	r1, .L50+12
	add	r2, lr, #48
	str	r3, [r1]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L34
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L50+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L34:
	ldr	lr, [sp], #4
	bx	lr
.L44:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L50+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L51:
	.align	2
.L50:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	doStart, .-doStart
	.align	2
	.global	doInstructions
	.syntax unified
	.arm
	.type	doInstructions, %function
doInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L62
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L62
	str	lr, [sp, #-4]!
	ldr	lr, .L68+8
	ldr	r1, .L68+12
	add	r2, lr, #48
	str	r3, [r1]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L52
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L68+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L52:
	ldr	lr, [sp], #4
	bx	lr
.L62:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L68+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L69:
	.align	2
.L68:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	doInstructions, .-doInstructions
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
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	ip, .L75+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L76:
	.align	2
.L75:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	doWin, .-doWin
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L81
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.L80
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	ldr	ip, .L81+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L81+8
	mov	r6, ip
	mov	lr, pc
	bx	ip
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L81+12
	ldr	r1, .L81+16
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L81+20
	mov	lr, pc
	bx	r6
	mov	r0, #16
	mov	r1, #16
	mov	r2, #10
	mov	r3, #1
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #32]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	strb	r5, [r4, #36]
	strb	r3, [r4, #52]
	str	r0, [r4, #40]
	str	r1, [r4, #44]
	str	r5, [r4, #8]
	str	r5, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r2, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	.LANCHOR1
	.word	DMANow
	.word	collisionBGPal
	.word	100696064
	.word	collisionBGTiles
	.word	collisionBGMap
	.size	initGame, .-initGame
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
	.global	driveStates
	.syntax unified
	.arm
	.type	driveStates, %function
driveStates:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L94
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L93
.L90:
	ldr	r3, [r3, #12]
	bx	r3	@ indirect register sibling call
.L93:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L90
	push	{r4, lr}
	mov	lr, pc
	bx	r2
	mov	r2, #1
	ldr	r3, .L94
	strb	r2, [r3, #4]
	ldr	r3, [r3, #12]
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.size	driveStates, .-driveStates
	.global	player
	.global	fromPause
	.global	current_state
	.global	game_states
	.data
	.align	2
	.set	.LANCHOR0,. + 0
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
	.align	3
	.set	.LANCHOR1,. + 0
	.type	fromPause, %object
	.size	fromPause, 4
fromPause:
	.space	4
	.space	4
	.type	player, %object
	.size	player, 48
player:
	.space	48
	.ident	"GCC: (devkitARM) 15.2.0"
