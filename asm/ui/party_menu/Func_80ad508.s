	.include "macros.inc"
	.include "gba.inc"

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

