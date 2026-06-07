	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2008334
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp, #8]
	mov	r11, r2
	mov	r1, #0xee
	ldr	r2, =ewram_2000240
	str	r0, [sp, #0xc]
	lsl	r1, #1
	mov	r9, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	asr	r3, #20
	add	r3, #0x40
	add	r1, #8
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	add	r1, #0x10
	asr	r3, #20
	mov	r8, r3
	add	r3, r2, r1
	ldr	r7, [r3]
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r5, =.L2dd0
	ldr	r2, [r5]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r6, r0
	cmp	r9, r3
	bne	.L382
	b	.L480
.L382:
	mov	r3, r9
	strh	r3, [r2]
	ldr	r0, [sp, #0xc]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3b4
	mov	r1, r10
	mov	r3, r8
	str	r1, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #8]
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	ldr	r0, [sp, #0xc]
	bl	__Func_8079358
	b	.L480

	.pool_aligned

.L3b4:
	ldr	r2, [r5]
	ldr	r3, =0xffffffff
	strh	r3, [r2]
	mov	r3, r10
	str	r3, [sp]
	mov	r1, r11
	mov	r3, r8
	str	r3, [sp, #4]
	ldr	r0, [sp, #8]
	mov	r2, #1
	mov	r3, #1
	add	r1, #1
	bl	__Func_80105d4
	mov	r0, #0xce
	bl	__Func_80f9080
	bl	__Func_80916b0
	ldr	r0, =0x2d
	mov	r1, r9
	bl	__Func_8091e3c
	mov	r0, r7
	mov	r1, #0x1b
	bl	__Func_80924d4
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r1, #0
	b	.L3fc

	.pool_aligned

.L3fc:
	bl	__Func_800c528
	mov	r0, r7
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, r6
	mov	r5, #2
	add	r3, #0x55
	strb	r5, [r3]
	ldr	r3, =0xff600000
	str	r3, [r6, #0x14]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x48]
	mov	r0, #0xcc
	bl	__Func_80f9080
	mov	r0, #3
	bl	__Func_809163c
	mov	r3, r6
	add	r3, #0x22
	strb	r5, [r3]
	mov	r0, r7
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r7, .L474	@ 0x2000
	mov	r5, #0x1d
.L450:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0
	bge	.L450
	mov	r1, r9
	cmp	r1, #0x32
	beq	.L480
	mov	r0, #0x91
	lsl	r0, #1
	bl	__Func_8079358
	b	.L480

	.align	2, 0
.L474:
	.word	0x2000
	.pool

.L480:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2008334

