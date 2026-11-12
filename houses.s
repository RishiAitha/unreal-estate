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
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	mov	fp, #6
	mov	r4, r10
	ldr	r2, .L8
	sub	sp, sp, #68
.L2:
	mov	r6, r2
	ldr	r3, .L8+4
	umull	r1, r3, r10, r3
	bic	r8, r3, #3
	add	r8, r8, r3, lsr #2
	sub	r7, r10, r8
	add	r7, r7, r7, lsl #2
	lsl	r7, r7, #3
	add	r5, r4, #2
	str	r10, [sp, #4]
	str	r4, [sp, #8]
	str	r2, [sp, #12]
	add	r7, r7, #12
	lsl	r8, r8, #3
	and	r5, r5, #255
	add	r9, r2, #188
.L3:
	mov	ip, r6
	ldmia	ip!, {r0, r1, r2, r3}
	add	lr, sp, #16
	mov	r10, lr
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r2, #32
	mov	r3, #32
	mov	r4, r6
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	str	r7, [sp, #16]
	ldm	ip, {r0, r1, r2, r3}
	str	r8, [sp, #20]
	stm	lr, {r0, r1, r2, r3}
	ldmia	r10!, {r0, r1, r2, r3}
	strb	r5, [sp, #60]
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r10!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	smull	r2, r3, r0, r3
	add	r5, r5, #1
	sub	r3, r3, r0, asr #31
	and	r5, r5, #255
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	cmp	r5, fp
	str	r0, [r9, #4]!
	add	r6, r6, #48
	bne	.L3
	ldr	r4, [sp, #8]
	ldr	r10, [sp, #4]
	ldr	r2, [sp, #12]
	add	r4, r4, #4
	add	fp, r5, #4
	cmp	r4, #80
	add	r10, r10, #1
	add	r2, r2, #208
	and	fp, fp, #255
	bne	.L2
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	houses
	.word	-858993459
	.word	rand
	.word	1431655766
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L16
	ldr	lr, .L16+4
	ldr	r6, .L16+8
	ldr	r5, .L16+12
	add	r7, r4, #4160
.L11:
	mov	r1, r4
	mov	r0, #48
	add	ip, r4, #188
.L12:
	ldrb	r2, [r1, #44]	@ zero_extendqisi2
	ldr	r3, [ip, #4]!
	sub	r9, r2, #1
	add	r3, r0, r3
	lsl	r3, r3, #2
	lsl	r9, r9, #10
	and	r9, r9, #3072
	and	r3, r3, #1020
	ldr	r8, [r1]
	orr	r3, r3, r9
	orr	r3, r3, #4096
	lsl	r9, r2, #3
	add	r1, r1, #48
	add	r2, lr, r2, lsl #3
	strh	r3, [r2, #4]	@ movhi
	and	r8, r8, r6
	ldrb	r3, [r1, #-44]	@ zero_extendqisi2
	add	r0, r0, #32
	orr	r8, r8, r5
	cmp	r0, #176
	strh	r8, [r2, #2]	@ movhi
	strh	r3, [lr, r9]	@ movhi
	bne	.L12
	add	r4, r4, #208
	cmp	r7, r4
	bne	.L11
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	houses
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawHouses, .-drawHouses
	.ident	"GCC: (devkitARM) 15.2.0"
