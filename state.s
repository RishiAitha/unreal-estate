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
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #1520
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
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	push	{r4, lr}
	ldr	r4, .L26
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L15
	ldr	r3, .L26+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L26+8
	addeq	r3, ip, #64
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L15:
	ldr	r3, .L26+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L16
	ldr	r3, .L26+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L25
.L16:
	ldr	r3, .L26+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L26+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L26+32
	mov	lr, pc
	bx	r4
.L14:
	pop	{r4, lr}
	bx	lr
.L25:
	ldr	r1, .L26+36
	ldr	r2, [r1, #16]
	ldr	r0, [r1]
	add	r2, r2, r2, lsr #31
	add	r0, r0, r2, asr #1
	mov	r3, #256
	ldr	r2, .L26+40
	ldr	r1, [r1, #4]
	ldr	r4, .L26+44
	mov	lr, pc
	bx	r4
	cmp	r0, #2
	bne	.L16
	ldr	ip, .L26+8
	add	r3, ip, #96
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	b	.L14
.L27:
	.align	2
.L26:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	updatePlayer
	.word	drawPlayer
	.word	drawHouses
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	.LANCHOR1
	.word	gameCollisionMapBitmap
	.word	colorAt
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
	ldr	r3, .L34
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L29
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L29
	mov	r1, #1
	mov	lr, #512
	ldr	ip, .L34+8
	ldr	r2, .L34+12
	ldr	r0, .L34+16
	add	r3, ip, #48
	strh	lr, [r0]	@ movhi
	str	r1, [r2, #48]
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
.L29:
	ldr	r3, .L34+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L34+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	doPause, .-doPause
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
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r4, .L38+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+8
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r0, #3
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	hideSprites
	.word	DMANow
	.word	winBGPal
	.word	100696064
	.word	winBGTiles
	.word	winBGMap
	.word	waitForVBlank
	.word	shadowOAM
	.size	initWin, .-initWin
	.align	2
	.global	doStart
	.syntax unified
	.arm
	.type	doStart, %function
doStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L56
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L50
	ldr	r3, .L56+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L50
	str	lr, [sp, #-4]!
	ldr	lr, .L56+8
	ldr	r1, .L56+12
	add	r2, lr, #48
	str	r3, [r1, #48]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L40
	ldr	r3, .L56+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L56+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L40:
	ldr	lr, [sp], #4
	bx	lr
.L50:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L56+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L56+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L74
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L68
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L68
	str	lr, [sp, #-4]!
	ldr	lr, .L74+8
	ldr	r1, .L74+12
	add	r2, lr, #48
	str	r3, [r1, #48]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L58
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L74+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L58:
	ldr	lr, [sp], #4
	bx	lr
.L68:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L74+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r3, .L81
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L81+4
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	ip, .L81+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	r4, .L87
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L86
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	ldr	ip, .L87+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L87+8
	mov	r6, ip
	mov	lr, pc
	bx	ip
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L87+12
	ldr	r1, .L87+16
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L87+20
	mov	lr, pc
	bx	r6
	mov	r2, #16
	mov	r3, #1
	mov	r1, #10
	mov	r0, #3
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	ldr	r2, .L87+24
	str	r0, [r4, #40]
	str	r5, [r4]
	str	r5, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r1, [r4, #24]
	strb	r5, [r4, #28]
	str	r5, [r4, #32]
	str	r5, [r4, #36]
	strb	r3, [r4, #44]
	mov	lr, pc
	bx	r2
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	.LANCHOR1
	.word	DMANow
	.word	collisionBGPal
	.word	100696064
	.word	collisionBGTiles
	.word	collisionBGMap
	.word	initializeHouses
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
	ldr	r3, .L100
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L99
.L96:
	ldr	r3, [r3, #12]
	bx	r3	@ indirect register sibling call
.L99:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L96
	push	{r4, lr}
	mov	lr, pc
	bx	r2
	mov	r2, #1
	ldr	r3, .L100
	strb	r2, [r3, #4]
	ldr	r3, [r3, #12]
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L101:
	.align	2
.L100:
	.word	.LANCHOR0
	.size	driveStates, .-driveStates
	.global	houses
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
	.align	2
	.set	.LANCHOR1,. + 0
	.type	player, %object
	.size	player, 48
player:
	.space	48
	.type	fromPause, %object
	.size	fromPause, 4
fromPause:
	.space	4
	.type	houses, %object
	.size	houses, 4160
houses:
	.space	4160
	.ident	"GCC: (devkitARM) 15.2.0"
