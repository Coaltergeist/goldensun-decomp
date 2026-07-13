	.include "macros.inc"

.thumb_func_start Func_80ad35c  @ 0x080ad35c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0x80
	mov	r8, r3
	mov	r6, #0x8d
	mov	r3, #0xa2
	mov	r7, #0x89
	sub	sp, #0x1c
	mov	r1, #0
	lsl	r2, #9
	lsl	r6, #2
	lsl	r3, #1
	lsl	r7, #2
	mov	r9, r1
	mov	r11, r2
	add	r4, sp, #4
	add	r5, sp, #0xc
	add	r6, r8
	mov	r10, r3
	add	r7, r8
.Lad392:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.Lad3e4
	mov	r3, r8
	mov	r1, r10
	ldrsh	r1, [r1, r3]
	lsl	r3, r1, #16
	mov	r1, #0xf1
	ldrb	r2, [r0, #9]
	lsl	r1, #17
	sub	r1, r3
	mov	r3, #0xd
	mov	r12, r2
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	mov	r2, r11
	str	r2, [sp, #4]
	strb	r3, [r0, #9]
	str	r2, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	str	r1, [r5, #4]
	str	r3, [r5]
	mov	r2, #8
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r5
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.Lad3e4:
	mov	r1, #1
	add	r9, r1
	mov	r3, #2
	mov	r2, r9
	add	r6, #2
	add	r10, r3
	cmp	r2, #3
	ble	.Lad392
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad35c

.thumb_func_start Func_80ad40c  @ 0x080ad40c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r0, =0x6002500
	sub	sp, #0x24
	mov	r8, r3
	bl	_Func_80219c8
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r0, #0x89
	mov	r3, #0xa2
	lsl	r0, #2
	mov	r1, #0xc
	mov	r7, #0x8d
	mov	r2, #0x91
	lsl	r3, #1
	add	r0, r8
	add	r1, sp
	lsl	r7, #2
	lsl	r2, #2
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r11, r1
	add	r7, r8
	mov	r9, r2
.Lad44c:
	ldr	r2, [sp]
	ldmia	r2!, {r6}
	mov	r1, r2
	str	r1, [sp]
	cmp	r6, #0
	beq	.Lad4d8
	ldr	r0, [sp, #4]
	mov	r2, r8
	ldrsh	r3, [r0, r2]
	mov	r2, #0xf1
	lsl	r3, #16
	lsl	r2, #17
	mov	r0, #0xd
	sub	r2, r3
	neg	r0, r0
	ldrb	r3, [r6, #9]
	mov	r10, r2
	mov	r2, r0
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r1, r9
	mov	r2, r8
	ldr	r5, [r1, r2]
	cmp	r5, #0
	bge	.Lad488
	neg	r3, r5
	mov	r4, r11
	str	r3, [sp, #0xc]
	str	r3, [r4, #4]
	b	.Lad4a4
.Lad488:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #3
	sub	r0, r5
	bl	__divsi3
	mov	r4, r11
	add	r0, r5, r0
	str	r0, [sp, #0xc]
	str	r0, [r4, #4]
	ldr	r3, [sp, #0xc]
	mov	r0, r8
	mov	r1, r9
	str	r3, [r0, r1]
.Lad4a4:
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	add	r1, sp, #0x14
	lsl	r3, #16
	str	r3, [r1]
	mov	r3, r10
	str	r3, [r1, #4]
	mov	r0, #8
	ldrsh	r3, [r7, r0]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r1, #8]
	mov	r3, #0
	str	r3, [r1, #0xc]
	mov	r3, #8
	ldrsh	r2, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #8
	cmp	r2, #0
	blt	.Lad4d0
	mov	r3, #0x80
	lsl	r3, #7
.Lad4d0:
	mov	r0, r6
	mov	r2, r4
	bl	_UpdateSprite
.Lad4d8:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #8]
	mov	r0, #4
	add	r1, #2
	add	r2, #1
	add	r7, #2
	add	r9, r0
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	cmp	r2, #3
	ble	.Lad44c
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad40c

.thumb_func_start Func_80ad508  @ 0x080ad508
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r5, #0x89
	ldr	r6, [r3]
	sub	sp, #4
	mov	r7, #0
	lsl	r5, #2
	mov	r2, #3
.Lad51e:
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lad52e
	str	r2, [sp]
	bl	_DeleteSprite
	str	r7, [r5, r6]
	ldr	r2, [sp]
.Lad52e:
	sub	r2, #1
	add	r5, #4
	cmp	r2, #0
	bge	.Lad51e
	ldr	r1, =.Laf304
	mov	r3, #0x8d
	lsl	r3, #2
	mov	r10, r1
	mov	r1, #0x89
	add	r7, r6, r3
	lsl	r1, #2
	mov	r3, #0
	add	r6, r1
	mov	r8, r3
	mov	r2, #3
.Lad54c:
	mov	r1, r8
	mov	r3, r10
	ldr	r0, [r1, r3]
	str	r2, [sp]
	bl	_CreateSprite
	mov	r5, r0
	ldr	r2, [sp]
	cmp	r5, #0
	beq	.Lad568
	mov	r1, #2
	bl	_Sprite_SetAnim
	ldr	r2, [sp]
.Lad568:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x20]
	ldr	r3, .Lad594	@ 0x10
	str	r5, [r6]
	strh	r3, [r7]
	ldr	r3, .Lad598	@ 0xc8
	mov	r1, #4
	sub	r2, #1
	strh	r3, [r7, #8]
	add	r6, #4
	add	r7, #2
	add	r8, r1
	cmp	r2, #0
	bge	.Lad54c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80ad40c
	bl	StartTask
	add	sp, #4
	b	.Lad5a8

	.align	2, 0
.Lad594:
	.word	0x10
.Lad598:
	.word	0xc8
	.pool

.Lad5a8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad508
