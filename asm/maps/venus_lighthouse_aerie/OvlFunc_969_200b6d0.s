	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200b6d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x236
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm969_36ee
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm969_37b8
.Lm969_36ee:
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x236
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_3714
	bl	__Random
	mov	r2, r0
	lsl	r2, #8
	b	.Lm969_371c

	.pool_aligned

.Lm969_3714:
	bl	__Random
	mov	r2, r0
	lsl	r2, #6
.Lm969_371c:
	ldr	r3, [r5, #0xc]
	lsr	r2, #16
	lsl	r2, #16
	add	r2, r3
	ldr	r3, =0xffe40000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r0, #1
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm969_37b8
	ldr	r1, =gScript_969__0200e16c
	mov	r0, r7
	ldr	r6, [r7, #0x50]
	bl	__Actor_SetScript
	mov	r1, #1
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	add	r3, #0x66
	strh	r5, [r3]
	ldr	r3, =OvlFunc_969_200b600
	ldr	r1, .Lm969_37a4	@ 0
	str	r3, [r7, #0x6c]
	mov	r8, r1
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r6
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	b	.Lm969_37b8

	.align	2, 0
.Lm969_37a4:
	.word	0
	.pool

.Lm969_37b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b6d0

