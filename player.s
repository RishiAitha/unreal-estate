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
	mov	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L45
	ldr	r1, [r4]
	ldr	r3, [r4, #16]
	ldr	r5, .L45+4
	add	r3, r1, r3
	ldr	r2, [r4, #4]
	add	ip, r1, #2
	sub	r8, r3, #3
	ldr	r1, [r4, #20]
	ldrh	r3, [r5]
	str	r0, [r4, #32]
	strb	r0, [r4, #28]
	add	r1, r2, r1
	add	r0, r2, #2
	tst	r3, #64
	mov	r6, ip
	mov	r7, r0
	sub	r9, r1, #3
	bne	.L4
	cmp	r2, #0
	mov	r2, #3
	strb	r2, [r4, #28]
	mov	r2, #1
	str	r2, [r4, #32]
	bgt	.L42
.L4:
	tst	r3, #128
	bne	.L9
	mov	r2, #4
	strb	r2, [r4, #28]
	mov	r2, #1
	ldr	r1, [r4, #20]
	str	r2, [r4, #32]
	ldr	r2, [r4, #4]
	add	r2, r2, r1
	cmp	r2, #159
	ble	.L43
.L9:
	tst	r3, #32
	bne	.L12
	mov	r1, #1
	ldr	r2, [r4]
	cmp	r2, #0
	strb	r1, [r4, #28]
	str	r1, [r4, #32]
	bgt	.L44
	tst	r3, #16
	beq	.L24
.L22:
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	bne	.L1
	mov	r2, #10
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	ldr	r3, .L45+8
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L44:
	ldr	r0, [r4, #8]
	mov	r3, #256
	mov	r1, r7
	ldr	r2, .L45+12
	ldr	ip, .L45+16
	sub	r0, r6, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L14
	ldrh	r3, [r5]
.L12:
	tst	r3, #16
	bne	.L17
	ldr	r2, [r4]
.L24:
	mov	r3, #2
	strb	r3, [r4, #28]
	mov	r3, #1
	str	r3, [r4, #32]
	ldr	r3, [r4, #16]
	add	r2, r2, r3
	cmp	r2, #239
	bgt	.L22
	ldr	r0, [r4, #8]
	mov	r1, r7
	mov	r3, #256
	ldr	r2, .L45+12
	ldr	r5, .L45+16
	add	r0, r8, r0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L17
	ldr	r0, [r4, #8]
	mov	r3, #256
	ldr	r2, .L45+12
	mov	r1, r9
	add	r0, r8, r0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r3, [r4]
	ldrne	r2, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r4]
.L17:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	bne	.L22
.L1:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	ldr	r1, [r4, #12]
	mov	r3, #256
	sub	r1, r0, r1
	ldr	r2, .L45+12
	mov	r0, ip
	ldr	ip, .L45+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L5
.L39:
	ldrh	r3, [r5]
	b	.L4
.L43:
	ldr	r1, [r4, #12]
	mov	r3, #256
	mov	r0, r6
	ldr	r2, .L45+12
	ldr	ip, .L45+16
	add	r1, r9, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L10
.L40:
	ldrh	r3, [r5]
	b	.L9
.L14:
	ldr	r0, [r4, #8]
	ldr	r2, .L45+12
	mov	r1, r9
	mov	r3, #256
	ldr	ip, .L45+16
	sub	r0, r6, r0
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r2, [r4]
	ldrne	r1, [r4, #8]
	subne	r2, r2, r1
	ldrh	r3, [r5]
	strne	r2, [r4]
	b	.L12
.L5:
	ldr	r1, [r4, #12]
	mov	r3, #256
	ldr	r2, .L45+12
	mov	r0, r8
	ldr	ip, .L45+16
	sub	r1, r7, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	subne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L39
.L10:
	ldr	r1, [r4, #12]
	mov	r3, #256
	ldr	r2, .L45+12
	mov	r0, r8
	ldr	ip, .L45+16
	add	r1, r9, r1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	addne	r3, r3, r2
	strne	r3, [r4, #4]
	b	.L40
.L46:
	.align	2
.L45:
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
	ldr	r2, .L49
	ldr	r3, [r2]
	ldr	lr, [r2, #36]
	ldrb	ip, [r2, #28]	@ zero_extendqisi2
	ldr	r1, .L49+4
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	ldr	r0, .L49+8
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
.L50:
	.align	2
.L49:
	.word	player
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.ident	"GCC: (devkitARM) 15.2.0"
