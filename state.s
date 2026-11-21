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
	mov	r3, #67108864
	mov	r2, #8
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
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
	mov	lr, #8
	mov	ip, #67108864
	mov	r3, #256
	strh	lr, [ip, #8]	@ movhi
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L35
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L15
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L35+8
	addeq	r3, ip, #64
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L15:
	ldr	r3, .L35+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L16
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L34
.L16:
	mov	r3, #67108864
	ldr	r2, .L35+16
	ldr	r1, .L35+20
	ldrh	r0, [r2]
	ldrh	r1, [r1]
	strh	r0, [r3, #20]	@ movhi
	ldr	r2, .L35+24
	strh	r1, [r3, #22]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L35+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+36
	mov	lr, pc
	bx	r3
	ldr	r4, .L35+40
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L35+44
	mov	lr, pc
	bx	r4
.L14:
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	ldr	r4, .L35+48
	ldr	r2, [r4, #16]
	ldm	r4, {r0, r1}
	add	r2, r2, r2, lsr #31
	add	r0, r0, r2, asr #1
	mov	r3, #512
	ldr	r2, .L35+52
	ldr	ip, .L35+56
	add	r1, r1, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #2
	bne	.L17
.L19:
	ldr	r3, [r4, #4]
	ldr	r1, .L35+60
	add	r3, r3, #8
	smull	r0, r2, r1, r3
	asr	r3, r3, #31
	rsb	r3, r3, r2, asr #3
	ldr	r2, [r4]
	smull	ip, r1, r2, r1
	ldr	r0, .L35+64
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r1, [r0]
	add	r3, r3, r2
	sub	r3, r3, #5
	cmp	r1, r3
	bne	.L16
	ldr	r3, [r4, #48]
	ldr	r2, .L35+68
	add	r3, r3, #1
	str	r3, [r4, #48]
	mov	lr, pc
	bx	r2
	ldr	r3, [r4, #48]
	cmp	r3, #1
	ble	.L16
	ldr	ip, .L35+8
	add	r3, ip, #96
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	mov	r3, #0
	mov	r2, #67108864
	ldr	ip, .L35+16
	ldr	r0, .L35+20
	str	r3, [ip]
	str	r3, [r0]
	ldr	r1, .L35+72
	strh	r3, [r2, #20]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	mov	lr, pc
	bx	r1
	b	.L14
.L17:
	ldr	r3, [r4]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #4]
	add	r0, r0, r3
	ldr	r2, .L35+52
	mov	r3, #512
	ldr	r5, .L35+56
	add	r1, r1, #1
	sub	r0, r0, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #2
	beq	.L19
	ldr	r1, [r4, #4]
	mov	r3, #512
	ldr	r2, .L35+52
	ldr	r0, [r4]
	add	r1, r1, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #2
	bne	.L16
	b	.L19
.L36:
	.align	2
.L35:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	updatePlayer
	.word	hOff
	.word	vOff
	.word	drawPlayer
	.word	drawHouses
	.word	drawCorrectHouse
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	.LANCHOR1
	.word	gameCollisionMapBitmap
	.word	colorAt
	.word	715827883
	.word	correctHouse
	.word	chooseCorrectHouse
	.word	hideSprites
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
	ldr	r3, .L43
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L38
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L38
	mov	r1, #1
	mov	lr, #512
	ldr	ip, .L43+8
	ldr	r2, .L43+12
	ldr	r0, .L43+16
	add	r3, ip, #48
	strh	lr, [r0]	@ movhi
	str	r1, [r2, #52]
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
.L38:
	ldr	r3, .L43+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L43+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L43+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
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
	mov	r3, #256
	ldr	r4, .L47
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L47+4
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r0, #3
	ldr	r2, .L47+8
	ldr	r1, .L47+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L47+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #8
	ldr	r3, .L47+24
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	DMANow
	.word	winBGPal
	.word	100696064
	.word	winBGTiles
	.word	winBGMap
	.word	hideSprites
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
	ldr	r3, .L65
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L59
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L59
	str	lr, [sp, #-4]!
	ldr	lr, .L65+8
	ldr	r1, .L65+12
	add	r2, lr, #48
	str	r3, [r1, #52]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L49
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L65+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L49:
	ldr	lr, [sp], #4
	bx	lr
.L59:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L65+8
	addeq	r3, ip, #32
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, .L83
	ldrh	ip, [r3]
	tst	ip, #8
	beq	.L77
	ldr	r3, .L83+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L77
	str	lr, [sp, #-4]!
	ldr	lr, .L83+8
	ldr	r1, .L83+12
	add	r2, lr, #48
	str	r3, [r1, #52]
	ldm	r2, {r0, r1, r2, r3}
	tst	ip, #4
	stm	lr, {r0, r1, r2, r3}
	beq	.L67
	ldr	r3, .L83+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L83+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
.L67:
	ldr	lr, [sp], #4
	bx	lr
.L77:
	tst	ip, #4
	bxeq	lr
	ldr	r3, .L83+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldreq	ip, .L83+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	r3, .L90
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L90+4
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	ip, .L90+8
	addeq	r3, ip, #16
	ldmeq	r3, {r0, r1, r2, r3}
	stmeq	ip, {r0, r1, r2, r3}
	bx	lr
.L91:
	.align	2
.L90:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L96
	ldr	r5, [r4, #52]
	cmp	r5, #0
	beq	.L95
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L95:
	ldr	r6, .L96+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+8
	mov	lr, pc
	bx	r6
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L96+12
	ldr	r1, .L96+16
	mov	lr, pc
	bx	r6
	mov	r3, #4096
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L96+20
	mov	lr, pc
	bx	r6
	mov	r7, #4864	@ movhi
	mov	ip, #67108864
	ldr	lr, .L96+24
	strh	r7, [ip]	@ movhi
	ldr	r7, .L96+28
	mov	r3, #32
	strh	r7, [ip, #10]	@ movhi
	mov	r0, #3
	strh	r5, [ip, #20]	@ movhi
	ldr	r2, .L96+32
	strh	r5, [ip, #22]	@ movhi
	ldr	r1, .L96+36
	strh	lr, [ip, #8]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L96+40
	ldr	r1, .L96+44
	mov	lr, pc
	bx	r6
	mov	r2, #16
	mov	r3, #1
	mov	r1, #10
	mov	r0, #3
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	ldr	r2, .L96+48
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
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	.LANCHOR1
	.word	DMANow
	.word	collisionBGPal
	.word	100696064
	.word	collisionBGTiles
	.word	collisionBGMap
	.word	1036
	.word	-16376
	.word	100712448
	.word	overlayBGTiles
	.word	100671488
	.word	overlayBGMap
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
	ldr	r3, .L109
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L108
.L105:
	ldr	r3, [r3, #12]
	bx	r3	@ indirect register sibling call
.L108:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L105
	push	{r4, lr}
	mov	lr, pc
	bx	r2
	mov	r2, #1
	ldr	r3, .L109
	strb	r2, [r3, #4]
	ldr	r3, [r3, #12]
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.size	driveStates, .-driveStates
	.global	score
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
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	fromPause, %object
	.size	fromPause, 4
fromPause:
	.space	4
	.type	houses, %object
	.size	houses, 5200
houses:
	.space	5200
	.ident	"GCC: (devkitARM) 15.2.0"
