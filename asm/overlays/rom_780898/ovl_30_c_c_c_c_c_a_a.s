	.include "macros.inc"

.thumb_func_start OvlFunc_883_200d928
	push	{lr}
	sub	sp, #8
	mov	r3, #0x16
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_883_20080c4
	bl	OvlFunc_883_200d950
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d928

.thumb_func_start OvlFunc_883_200d950
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5976
	mov	r0, #0x15
	b	.L5978
.L5976:
	mov	r0, #0x14
.L5978:
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L59f2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x315
	bl	__ClearFlag
	ldr	r0, =0x316
	bl	__ClearFlag
	ldr	r3, [r5, #8]
	asr	r0, r3, #20
	cmp	r0, #0x16
	bne	.L59ba
	mov	r3, #0x24
	str	r0, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
	b	.L59f2
.L59ba:
	cmp	r0, #0x17
	bne	.L59d8
	mov	r3, #0x24
	str	r0, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x315
	bl	__SetFlag
	b	.L59f2
.L59d8:
	mov	r3, #0x18
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x316
	bl	__SetFlag
.L59f2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d950

