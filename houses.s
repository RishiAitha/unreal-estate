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
	.file	"houses.c"
	.text
	.align	2
	.global	initializeHouses
	.syntax unified
	.arm
	.type	initializeHouses, %function
initializeHouses:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #188
	add	r3, sp, #100
	mov	r7, r3
	mov	r6, #236
	mov	r4, #1
	str	r3, [sp, #12]
	ldr	r5, .L15
.L3:
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #8
	sub	r3, r0, r3
	cmp	r3, #0
	movge	r2, r3
	addlt	r2, r3, #31
	add	r1, sp, #184
	asr	r2, r2, #5
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #-160]
	and	r0, r3, #31
	lsl	ip, r4, r0
	ands	r0, r1, ip, asr r0
	movne	r3, r6
	add	r6, r6, #1
	orr	r1, r1, ip
	cmp	r6, #256
	str	r1, [r2, #-160]
	str	r3, [r7, #4]!
	bne	.L3
	ldr	r4, [sp, #12]
	ldr	r6, .L15+8
	add	r5, sp, #180
.L4:
	ldr	r0, [r4, #4]!
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L4
	mov	r3, #78
	mov	r10, #0
	ldr	fp, .L15+12
.L6:
	ldr	r2, .L15+16
	umull	r1, r2, r10, r2
	ldr	r1, [sp, #12]
	bic	r8, r2, #3
	ldr	r0, [r1, #4]!
	add	r8, r8, r2, lsr #2
	sub	r7, r10, r8
	lsl	r8, r8, #3
	mov	r6, fp
	str	fp, [sp, #20]
	str	r8, [sp, #8]
	add	r9, fp, #188
	mov	r4, #256
	mov	fp, r0
	mov	r8, r3
	add	r7, r7, r7, lsl #2
	lsl	r7, r7, #3
	add	r7, r7, #12
	add	r5, r3, #4
	str	r1, [sp, #12]
	str	r7, [sp, #4]
	str	r10, [sp, #16]
	and	r5, r5, #255
.L5:
	mov	ip, r6
	ldmia	ip!, {r0, r1, r2, r3}
	add	lr, sp, #56
	mov	r10, lr
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [sp, #4]
	str	r3, [sp, #56]
	ldr	r3, [sp, #8]
	str	r3, [sp, #60]
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r2, #32
	mov	r3, #32
	mov	r7, r6
	str	r2, [sp, #72]
	str	r3, [sp, #76]
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	strb	r5, [sp, #100]
	ldmia	r10!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	r10!, {r0, r1, r2, r3}
	cmp	r4, #0
	stmia	r7!, {r0, r1, r2, r3}
	addlt	r4, r4, #3
	ldm	lr, {r0, r1, r2, r3}
	asr	r4, r4, #2
	stm	ip, {r0, r1, r2, r3}
	mov	r0, fp
	mov	r1, r4
	ldr	r3, .L15+20
	mov	lr, pc
	bx	r3
	sub	r5, r5, #1
	and	r5, r5, #255
	cmp	r8, r5
	mov	fp, r1
	str	r0, [r9, #4]!
	add	r6, r6, #48
	bne	.L5
	add	r10, sp, #16
	ldm	r10, {r10, fp}
	add	r10, r10, #1
	sub	r3, r8, #4
	cmp	r10, #20
	add	fp, fp, #208
	and	r3, r3, #255
	bne	.L6
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L15+24
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r2, r3, r3, lsl #3
	ldr	r1, .L15+28
	add	r3, r3, r2, lsl #1
	sub	r0, r0, r3
	str	r0, [r1]
	add	sp, sp, #188
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	-2139062143
	.word	rand
	.word	mgba_printf_int
	.word	houses
	.word	-858993459
	.word	__aeabi_idivmod
	.word	1808407283
	.word	.LANCHOR0
	.size	initializeHouses, .-initializeHouses
	.align	2
	.global	drawHouses
	.syntax unified
	.arm
	.type	drawHouses, %function
drawHouses:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L23
	ldr	r4, .L23+4
	ldr	r8, .L23+8
	ldr	r7, .L23+12
	add	r9, r6, #4160
.L18:
	mov	r1, r6
	mov	ip, #48
	add	lr, r6, #188
.L19:
	ldr	r3, [lr, #4]!
	ldr	r2, [r1]
	ldrb	r0, [r1, #44]	@ zero_extendqisi2
	add	r3, ip, r3
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	and	r2, r2, r8
	lsl	r3, r3, #2
	add	ip, ip, #32
	add	r10, r4, r0, lsl #3
	orr	r2, r2, r7
	lsl	r0, r0, #3
	and	r3, r3, #1020
	cmp	ip, #176
	strh	r5, [r4, r0]	@ movhi
	strh	r2, [r10, #2]	@ movhi
	strh	r3, [r10, #4]	@ movhi
	add	r1, r1, #48
	bne	.L19
	add	r6, r6, #208
	cmp	r9, r6
	bne	.L18
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	houses
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawHouses, .-drawHouses
	.global	correctHouse
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	correctHouse, %object
	.size	correctHouse, 4
correctHouse:
	.space	4
	.global	__aeabi_idivmod
	.ident	"GCC: (devkitARM) 15.2.0"
