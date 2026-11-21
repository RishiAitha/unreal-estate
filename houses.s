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
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #231
	mov	r4, #1
	sub	sp, sp, #212
	ldr	r5, .L13
	add	r7, sp, #104
.L3:
	ldr	r3, .L13+4
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
	add	r1, sp, #208
	asr	r2, r2, #5
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #-184]
	and	r0, r3, #31
	lsl	ip, r4, r0
	ands	r0, r1, ip, asr r0
	movne	r3, r6
	add	r6, r6, #1
	orr	r1, r1, ip
	cmp	r6, #256
	str	r1, [r2, #-184]
	str	r3, [r7, #4]!
	bne	.L3
	mov	r3, #98
	mov	r10, #0
	ldr	fp, .L13+8
	add	r2, sp, #104
.L5:
	ldr	r1, .L13+12
	umull	r0, r1, r10, r1
	bic	r7, r1, #3
	add	r7, r7, r1, lsr #2
	lsr	r8, r1, #2
	sub	r7, r10, r7
	add	r8, r8, r8, lsl #1
	add	r7, r7, r7, lsl #1
	ldr	r0, [r2, #4]!
	lsl	r8, r8, #4
	lsl	r7, r7, #4
	add	r8, r8, #24
	add	r7, r7, #20
	stmib	sp, {r7, r8, r10, fp}
	mov	r6, fp
	add	r9, fp, #188
	mov	r4, #256
	mov	fp, r0
	mov	r8, r3
	add	r5, r3, #4
	str	r2, [sp, #20]
	and	r5, r5, #255
.L4:
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
	ldr	r3, .L13+16
	mov	lr, pc
	bx	r3
	sub	r5, r5, #1
	and	r5, r5, #255
	cmp	r8, r5
	mov	fp, r1
	str	r0, [r9, #4]!
	add	r6, r6, #48
	bne	.L4
	add	r10, sp, #12
	ldm	r10, {r10, fp}
	add	r10, r10, #1
	sub	r3, r8, #4
	cmp	r10, #25
	ldr	r2, [sp, #20]
	add	fp, fp, #208
	and	r3, r3, #255
	bne	.L5
	ldr	r3, .L13+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L13+20
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r2, r3, r3, lsl #3
	ldr	r1, .L13+24
	add	r3, r3, r2, lsl #1
	sub	r0, r0, r3
	str	r0, [r1]
	add	sp, sp, #212
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	-2139062143
	.word	rand
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #512
	ldr	r3, .L23
	ldr	r6, .L23+4
	ldr	r7, [r3]
	ldr	r3, .L23+8
	add	r1, r6, #5184
	ldrh	r10, [r3]
	sub	sp, sp, #20
	add	r1, r1, #16
	lsl	r8, r7, #16
	ldr	r5, .L23+12
	ldr	fp, .L23+16
	str	r10, [sp, #4]
	str	r1, [sp, #12]
	lsr	r8, r8, #16
.L16:
	mov	r2, r6
	mov	ip, #48
	str	r6, [sp, #8]
	add	lr, r6, #192
.L19:
	ldr	r3, [r2]
	ldrb	r0, [r2, #44]	@ zero_extendqisi2
	sub	r1, r3, r7
	cmp	r1, #170
	lsl	r1, r0, #3
	strhgt	r9, [r5, r1]	@ movhi
	bgt	.L18
	sub	r3, r3, r8
	and	r3, r3, fp
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [lr]
	ldr	r4, [r2, #4]
	ldr	r6, [sp, #4]
	add	r1, ip, r1
	sub	r4, r4, r6
	lsl	r1, r1, #2
	add	r10, r5, r0, lsl #3
	and	r4, r4, #255
	lsl	r0, r0, #3
	and	r1, r1, #1020
	strh	r4, [r5, r0]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r1, [r10, #4]	@ movhi
.L18:
	add	ip, ip, #32
	cmp	ip, #176
	add	r2, r2, #48
	add	lr, lr, #4
	bne	.L19
	ldr	r6, [sp, #8]
	ldr	r3, [sp, #12]
	add	r6, r6, #208
	cmp	r3, r6
	bne	.L16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	hOff
	.word	houses
	.word	vOff
	.word	shadowOAM
	.word	511
	.size	drawHouses, .-drawHouses
	.align	2
	.global	chooseCorrectHouse
	.syntax unified
	.arm
	.type	chooseCorrectHouse, %function
chooseCorrectHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L27
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r2, .L27+4
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r2, r3, r3, lsl #3
	ldr	r1, .L27+8
	add	r3, r3, r2, lsl #1
	sub	r0, r0, r3
	str	r0, [r1]
	pop	{r4, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	rand
	.word	1808407283
	.word	.LANCHOR0
	.size	chooseCorrectHouse, .-chooseCorrectHouse
	.align	2
	.global	drawCorrectHouse
	.syntax unified
	.arm
	.type	drawCorrectHouse, %function
drawCorrectHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #48
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r0, .L33+4
	add	ip, r3, r3, lsl #1
	str	lr, [sp, #-4]!
	add	r3, r3, ip, lsl #2
	ldr	r2, .L33+8
	ldr	lr, .L33+12
	add	r0, r0, r3, lsl #4
.L30:
	ldr	r3, [r0, #4]!
	add	r3, r1, r3
	sub	ip, r1, #16
	lsl	r3, r3, #2
	add	r1, r1, #32
	and	r3, r3, #1020
	cmp	r1, #176
	strh	ip, [r2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L30
	ldr	lr, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	houses+188
	.word	shadowOAM+824
	.word	-32560
	.size	drawCorrectHouse, .-drawCorrectHouse
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
