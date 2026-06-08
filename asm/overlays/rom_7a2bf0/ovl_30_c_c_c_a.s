	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_2008bf8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_915_20088c0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc5a
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x10
	mov	r3, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_915_2008244
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.Lc5a:
	mov	r0, #8
	bl	OvlFunc_915_20088c0
	mov	r0, #9
	bl	OvlFunc_915_20088c0
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc76
	mov	r0, #6
	bl	OvlFunc_915_2008c8c
.Lc76:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_915_2008bf8

.thumb_func_start OvlFunc_915_2008c8c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_915_2008d5c
	mov	r6, #0
.Lc96:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Lcc4
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Lcc4
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_915_2008cf4
	strh	r0, [r5]
.Lcc4:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lc96
	bl	OvlFunc_915_2008d9c
	bl	OvlFunc_915_2008d7c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_2008c8c

.thumb_func_start OvlFunc_915_2008cf4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xf8
	lsl	r0, #16
	lsl	r3, #13
	and	r3, r0
	asr	r6, r3, #16
	ldr	r2, =0x1f
	mov	r8, r1
	lsr	r5, r0, #21
	lsr	r7, r0, #26
	lsl	r1, #2
	mov	r0, r6
	and	r5, r2
	and	r7, r2
	bl	_Func_8000af0
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_Func_8000af0
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_Func_8000af0
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.Ld40

	.pool_aligned

.Ld40:
	cmp	r6, #0x1f
	ble	.Ld46
	mov	r6, #0x1f
.Ld46:
	lsl	r3, r7, #10
	lsl	r2, r5, #5
	orr	r3, r2
	orr	r6, r3
	lsl	r0, r6, #16
	lsr	r0, #16
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_915_2008cf4

