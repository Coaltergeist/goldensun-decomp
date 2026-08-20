	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f62b8  @ 0x080f62b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	ldr	r3, =iwram_3001ef0
	ldr	r3, [r3]
	mov	r7, r1
	sub	r6, r2, r0
	mov	r1, #0x80
	mov	r10, r2
	sub	sp, #4
	mov	r8, r0
	sub	r5, r4, r7
	mov	r9, r1
	mov	r11, r3
	mov	r2, r6
	cmp	r6, #0
	bge	.Lf62e6
	neg	r2, r6
.Lf62e6:
	mov	r3, r5
	cmp	r5, #0
	bge	.Lf62ee
	neg	r3, r5
.Lf62ee:
	cmp	r2, r3
	bge	.Lf6396
	cmp	r5, #0
	bge	.Lf630a
	mov	r12, r8
	mov	r8, r10
	mov	r10, r12
	mov	r12, r7
	mov	r2, r10
	mov	r7, r4
	mov	r3, r8
	mov	r4, r12
	sub	r6, r2, r3
	sub	r5, r4, r7
.Lf630a:
	lsl	r0, r6, #8
	cmp	r6, #0
	bge	.Lf6318
	mov	r1, r8
	mov	r2, r10
	sub	r3, r1, r2
	lsl	r0, r3, #8
.Lf6318:
	cmp	r5, #0
	blt	.Lf632a
	mov	r1, r5
	str	r4, [sp]
	bl	__divsi3
	mov	r12, r0
	ldr	r4, [sp]
	b	.Lf6336
.Lf632a:
	sub	r1, r7, r4
	str	r4, [sp]
	bl	__divsi3
	ldr	r4, [sp]
	mov	r12, r0
.Lf6336:
	mov	r0, r7
	mov	r1, r8
	cmp	r0, r4
	beq	.Lf6426
	mov	r3, #0x80
	ldr	r7, =0xfffffeff
	lsl	r3, #1
	mov	r5, #7
	mov	r14, r3
	mov	r8, r7
.Lf634a:
	lsr	r2, r0, #3
	lsr	r3, r1, #3
	lsl	r2, #5
	add	r2, r3
	mov	r3, r0
	and	r3, r5
	lsl	r2, #3
	add	r2, r3
	mov	r3, r1
	and	r3, r5
	lsl	r2, #3
	mov	r7, r11
	add	r2, r3
	ldrb	r3, [r7, r2]
	ldr	r7, [sp, #0x24]
	cmp	r3, r7
	bge	.Lf6370
	mov	r3, r11
	strb	r7, [r3, r2]
.Lf6370:
	add	r9, r12
	mov	r3, r9
	mov	r7, r14
	and	r3, r7
	cmp	r3, #0
	beq	.Lf638e
	cmp	r6, #0
	ble	.Lf6384
	add	r1, #1
	b	.Lf6386
.Lf6384:
	sub	r1, #1
.Lf6386:
	mov	r2, r9
	mov	r3, r8
	and	r2, r3
	mov	r9, r2
.Lf638e:
	add	r0, #1
	cmp	r0, r4
	bne	.Lf634a
	b	.Lf6426
.Lf6396:
	cmp	r6, #0
	bge	.Lf63ae
	mov	r12, r8
	mov	r8, r10
	mov	r10, r12
	mov	r12, r7
	mov	r1, r10
	mov	r7, r4
	mov	r2, r8
	mov	r4, r12
	sub	r6, r1, r2
	sub	r5, r4, r7
.Lf63ae:
	lsl	r0, r5, #8
	cmp	r5, #0
	bge	.Lf63b8
	sub	r3, r7, r4
	lsl	r0, r3, #8
.Lf63b8:
	cmp	r6, #0
	blt	.Lf63c0
	mov	r1, r6
	b	.Lf63c6
.Lf63c0:
	mov	r3, r8
	mov	r6, r10
	sub	r1, r3, r6
.Lf63c6:
	bl	__divsi3
	mov	r12, r0
	mov	r0, r8
	mov	r1, r7
	cmp	r0, r10
	beq	.Lf6426
	ldr	r2, =0xfffffeff
	mov	r7, #0x80
	mov	r4, #7
	lsl	r7, #1
	mov	r14, r2
.Lf63de:
	lsr	r2, r1, #3
	lsr	r3, r0, #3
	lsl	r2, #5
	add	r2, r3
	mov	r3, r1
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	mov	r6, r11
	add	r2, r3
	ldrb	r3, [r6, r2]
	ldr	r6, [sp, #0x24]
	cmp	r3, r6
	bge	.Lf6404
	mov	r3, r11
	strb	r6, [r3, r2]
.Lf6404:
	add	r9, r12
	mov	r3, r9
	and	r3, r7
	cmp	r3, #0
	beq	.Lf6420
	cmp	r5, #0
	ble	.Lf6416
	add	r1, #1
	b	.Lf6418
.Lf6416:
	sub	r1, #1
.Lf6418:
	mov	r6, r9
	mov	r2, r14
	and	r6, r2
	mov	r9, r6
.Lf6420:
	add	r0, #1
	cmp	r0, r10
	bne	.Lf63de
.Lf6426:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f62b8

