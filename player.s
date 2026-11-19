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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #0
	ldr	r4, .L53
	ldr	r5, .L53+4
	ldr	ip, [r4]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #20]
	ldrh	r1, [r5]
	add	r6, ip, r2
	add	r2, r2, r2, lsr #31
	add	r10, ip, r2, asr #1
	tst	r1, #64
	add	r2, r0, r3
	add	r3, r3, r3, lsr #31
	sub	r8, r6, #3
	str	lr, [r4, #32]
	strb	lr, [r4, #28]
	add	r7, ip, #2
	sub	r9, r2, #3
	add	fp, r0, r3, asr #1
	add	r6, r0, #2
	bne	.L4
	mov	r3, #3
	strb	r3, [r4, #28]
	mov	r3, #1
	cmp	r0, lr
	str	r3, [r4, #32]
	bgt	.L49
.L4:
	tst	r1, #128
	bne	.L10
	mov	r3, #4
	strb	r3, [r4, #28]
	mov	r3, #1
	ldr	r2, [r4, #20]
	str	r3, [r4, #32]
	ldr	r3, [r4, #4]
	add	r3, r3, r2
	cmp	r3, #159
	ble	.L50
.L10:
	tst	r1, #32
	bne	.L14
	mov	r2, #1
	ldr	r3, [r4]
	cmp	r3, #0
	strb	r2, [r4, #28]
	str	r2, [r4, #32]
	bgt	.L51
	tst	r1, #16
	beq	.L27
.L25:
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	bne	.L1
	mov	r2, #10
	ldr	r0, [r4, #36]
	ldr	r3, .L53+8
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L51:
	ldr	r0, [r4, #8]
	mov	r3, #256
	mov	r1, r6
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L16
.L47:
	ldrh	r1, [r5]
.L14:
	tst	r1, #16
	bne	.L20
	ldr	r3, [r4]
.L27:
	mov	r2, #2
	strb	r2, [r4, #28]
	mov	r2, #1
	str	r2, [r4, #32]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bgt	.L25
	ldr	r0, [r4, #8]
	mov	r1, r6
	mov	r3, #256
	ldr	r2, .L53+12
	ldr	r5, .L53+16
	add	r0, r8, r0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L20
	ldr	r0, [r4, #8]
	mov	r1, r9
	mov	r3, #256
	ldr	r2, .L53+12
	add	r0, r8, r0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
.L20:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	bne	.L25
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L49:
	ldr	r1, [r4, #12]
	mov	r3, #256
	mov	r0, r7
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	sub	r1, r6, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L5
.L45:
	ldrh	r1, [r5]
	b	.L4
.L50:
	ldr	r1, [r4, #12]
	mov	r3, #256
	mov	r0, r7
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	add	r1, r9, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L11
.L46:
	ldrh	r1, [r5]
	b	.L10
.L16:
	ldr	r0, [r4, #8]
	mov	r3, #256
	mov	r1, r9
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L47
	ldr	r0, [r4, #8]
	mov	r3, #256
	ldr	r2, .L53+12
	mov	r1, fp
	ldr	ip, .L53+16
	sub	r0, r7, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4]
	ldrne	r2, [r4, #8]
	subne	r3, r3, r2
	ldrh	r1, [r5]
	strne	r3, [r4]
	b	.L14
.L5:
	ldr	r1, [r4, #12]
	mov	r3, #256
	mov	r0, r8
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	sub	r1, r6, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L45
	ldr	r1, [r4, #12]
	mov	r3, #256
	ldr	r2, .L53+12
	mov	r0, r10
	ldr	ip, .L53+16
	sub	r1, r6, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	subne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L45
.L11:
	ldr	r1, [r4, #12]
	mov	r3, #256
	mov	r0, r8
	ldr	r2, .L53+12
	ldr	ip, .L53+16
	add	r1, r9, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L46
	ldr	r1, [r4, #12]
	mov	r3, #256
	ldr	r2, .L53+12
	mov	r0, r10
	ldr	ip, .L53+16
	add	r1, r9, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	addne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L46
.L52:
	ldr	r0, [r4, #8]
	mov	r3, #256
	ldr	r2, .L53+12
	mov	r1, fp
	add	r0, r8, r0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r3, [r4]
	ldrne	r2, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r4]
	b	.L20
.L54:
	.align	2
.L53:
	.word	player
	.word	buttons
	.word	__aeabi_idivmod
	.word	gameCollisionMapBitmap
	.word	colorAt
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
	ldr	r2, .L57
	ldr	r3, [r2]
	ldr	lr, [r2, #36]
	ldrb	ip, [r2, #28]	@ zero_extendqisi2
	ldr	r1, .L57+4
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	ldr	r0, .L57+8
	lsl	r3, r3, #23
	add	ip, ip, lr, lsl #5
	lsr	r3, r3, #23
	strh	r2, [r1, #8]	@ movhi
	orr	r3, r3, #16384
	and	r2, r0, ip, lsl #1
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	player
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.ident	"GCC: (devkitARM) 15.2.0"
