	.include "macros.inc"

.thumb_func_start OvlFunc_920_20087f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r4, =.L1064
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r4, r5]
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r8, r0
	asr	r2, r3, #16
	add	r1, r2
	mov	r9, r4
	mov	r4, r8
	asr	r0, r1, #4
	lsl	r3, #16
	mov	r1, #0x12
	ldrsh	r2, [r4, r1]
	asr	r3, #16
	add	r2, r3
	asr	r1, r2, #4
	bl	OvlFunc_920_20087c4
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e6
	mov	r1, r9
	ldr	r2, [r1, r5]
	mov	r0, #0xa
	ldrsh	r3, [r6, r0]
	asr	r1, r2, #16
	add	r3, r1
	asr	r0, r3, #4
	lsl	r2, #16
	mov	r4, #0x12
	ldrsh	r3, [r6, r4]
	asr	r2, #16
	add	r3, r2
	asr	r1, r3, #4
	bl	OvlFunc_920_20087c4
	mov	r10, r0
	cmp	r0, #0
	bne	.L8e6
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r9
	ldr	r1, [r0, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r6, #8]
	and	r2, r1
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__Func_80120dc
	cmp	r0, #0
	bgt	.L8e6
	mov	r1, #8
	mov	r0, r8
	bl	__Func_800c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_80030f8
	mov	r0, #0xb9
	bl	__Func_80f9080
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_800d14c
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r8
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_800ca6c
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r2, r10
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x24]
	str	r2, [r6, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_800c300
	bl	OvlFunc_920_2008304
.L8e6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20087f8

