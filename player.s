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
	.file	"player.c"
	.text
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #0
	ldr	r4, .L54
	ldr	r6, .L54+4
	ldr	ip, [r4]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #20]
	add	r5, ip, r2
	ldrh	r1, [r6]
	add	r2, r2, r2, lsr #31
	add	fp, ip, r2, asr #1
	add	r2, r0, r3
	add	r3, r3, r3, lsr #31
	sub	sp, sp, #12
	sub	r10, r2, #3
	add	r3, r0, r3, asr #1
	add	r2, r0, #2
	tst	r1, #64
	mov	r8, r2
	str	lr, [r4, #32]
	strb	lr, [r4, #28]
	str	r3, [sp, #4]
	add	r7, ip, #2
	sub	r9, r5, #3
	bne	.L4
	mov	r3, #3
	strb	r3, [r4, #28]
	mov	r3, #1
	cmp	r0, lr
	str	r3, [r4, #32]
	bgt	.L49
.L4:
	tst	r1, #128
	beq	.L40
	ldr	r5, .L54+8
.L10:
	tst	r1, #32
	ldr	r3, [r4]
	bne	.L16
	mov	r2, #1
	cmp	r3, #0
	strb	r2, [r4, #28]
	str	r2, [r4, #32]
	bgt	.L50
.L16:
	ldr	r6, .L54+12
	tst	r1, #16
	ldr	r2, [r6]
	bne	.L46
	mov	r1, #2
	strb	r1, [r4, #28]
	mov	r1, #1
	ldr	r0, [r4, #16]
	add	r0, r3, r0
	sub	r0, r0, r2
	cmp	r0, #239
	str	r1, [r4, #32]
	ble	.L51
.L21:
	sub	r3, r3, r2
	cmp	r3, #59
	bgt	.L25
.L53:
	cmp	r2, #0
	ldrgt	r3, [r4, #8]
	subgt	r3, r2, r3
	strgt	r3, [r6]
.L26:
	ldr	r2, [r5]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	cmp	r3, #39
	bgt	.L27
	cmp	r2, #0
	ldrgt	r3, [r4, #12]
	subgt	r2, r2, r3
	strgt	r2, [r5]
.L28:
	cmp	r1, #0
	streq	r1, [r4, #36]
	beq	.L1
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	beq	.L52
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L22:
	ldr	r0, [r4, #8]
	mov	r1, r10
	mov	r3, #512
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	add	r0, r9, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L47
	ldr	r0, [r4, #8]
	ldr	r2, .L54+16
	mov	r3, #512
	ldr	r1, [sp, #4]
	ldr	ip, .L54+20
	add	r0, r9, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldr	r3, [r4]
	ldrne	r2, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r4]
	ldr	r2, [r6]
.L46:
	sub	r3, r3, r2
	cmp	r3, #59
	ldr	r1, [r4, #32]
	ble	.L53
.L25:
	cmp	r2, #512
	movge	r0, #0
	movlt	r0, #1
	cmp	r3, #180
	movle	r0, #0
	cmp	r0, #0
	ldrne	r3, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r6]
	b	.L26
.L40:
	mov	r3, #4
	strb	r3, [r4, #28]
	mov	r3, #1
	ldr	r2, [r4, #20]
	str	r3, [r4, #32]
	ldr	r5, .L54+8
	ldr	r3, [r4, #4]
	add	r3, r3, r2
	ldr	r2, [r5]
	sub	r3, r3, r2
	cmp	r3, #159
	bgt	.L10
	ldr	r1, [r4, #12]
	mov	r3, #512
	mov	r0, r7
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	add	r1, r10, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L11
.L43:
	ldrh	r1, [r6]
	b	.L10
.L27:
	cmp	r2, #512
	movge	r0, #0
	movlt	r0, #1
	cmp	r3, #120
	movle	r0, #0
	cmp	r0, #0
	ldrne	r3, [r4, #12]
	addne	r3, r3, r2
	strne	r3, [r5]
	b	.L28
.L52:
	mov	r2, #10
	ldr	r0, [r4, #36]
	ldr	r3, .L54+24
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L50:
	ldr	r0, [r4, #8]
	mov	r3, #512
	mov	r1, r8
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L17
.L44:
	ldrh	r1, [r6]
	ldr	r3, [r4]
	b	.L16
.L49:
	ldr	r1, [r4, #12]
	mov	r3, #512
	sub	r1, r2, r1
	mov	r0, r7
	ldr	r2, .L54+16
	ldr	r5, .L54+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L5
.L42:
	ldrh	r1, [r6]
	b	.L4
.L51:
	ldr	r0, [r4, #8]
	mov	r1, r8
	mov	r3, #512
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	add	r0, r9, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L22
.L47:
	ldr	r3, [r4]
	ldr	r2, [r6]
	ldr	r1, [r4, #32]
	b	.L21
.L17:
	ldr	r0, [r4, #8]
	mov	r3, #512
	mov	r1, r10
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L44
	ldr	r0, [r4, #8]
	ldr	r2, .L54+16
	mov	r3, #512
	ldr	r1, [sp, #4]
	ldr	ip, .L54+20
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldr	r3, [r4]
	ldrne	r2, [r4, #8]
	subne	r3, r3, r2
	ldrh	r1, [r6]
	strne	r3, [r4]
	b	.L16
.L5:
	ldr	r1, [r4, #12]
	mov	r3, #512
	mov	r0, r9
	ldr	r2, .L54+16
	sub	r1, r8, r1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L42
	ldr	r1, [r4, #12]
	mov	r3, #512
	ldr	r2, .L54+16
	mov	r0, fp
	sub	r1, r8, r1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	subne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L42
.L11:
	ldr	r1, [r4, #12]
	mov	r3, #512
	mov	r0, r9
	ldr	r2, .L54+16
	ldr	ip, .L54+20
	add	r1, r10, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L43
	ldr	r1, [r4, #12]
	mov	r3, #512
	ldr	r2, .L54+16
	mov	r0, fp
	ldr	ip, .L54+20
	add	r1, r10, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	addne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L43
.L55:
	.align	2
.L54:
	.word	player
	.word	buttons
	.word	vOff
	.word	hOff
	.word	gameCollisionMapBitmap
	.word	colorAt
	.word	__aeabi_idivmod
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L58
	ldr	r2, .L58+4
	ldr	ip, .L58+8
	ldr	r0, [r2]
	ldr	r3, [r1]
	ldr	lr, [ip]
	sub	r3, r3, r0
	ldrb	ip, [r1, #28]	@ zero_extendqisi2
	ldr	r0, [r1, #36]
	ldr	r2, [r1, #4]
	add	ip, ip, r0, lsl #5
	lsl	r3, r3, #23
	ldr	r0, .L58+12
	ldr	r1, .L58+16
	sub	r2, r2, lr
	lsr	r3, r3, #23
	and	r0, r0, ip, lsl #1
	and	r2, r2, #255
	orr	r3, r3, #16384
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
	.word	player
	.word	hOff
	.word	vOff
	.word	1022
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.ident	"GCC: (devkitARM) 15.2.0"
