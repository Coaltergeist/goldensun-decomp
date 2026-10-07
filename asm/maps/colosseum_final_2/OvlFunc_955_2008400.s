	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008400
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	mov	r5, #0
	mov	r7, #0x20
	cmp	r3, #0xc
	ble	.Lm955_424
	mov	r7, #0x21
.Lm955_424:
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r6
	bne	.Lm955_4ae
	cmp	r6, #0x33
	ble	.Lm955_448
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lm955_456
	mov	r5, #0x40
	neg	r5, r5
	b	.Lm955_456
.Lm955_448:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lm955_456
	mov	r5, #0x40
.Lm955_456:
	cmp	r5, #0
	beq	.Lm955_4ae
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	bl	OvlFunc_955_2008310
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	mov	r3, #6
	mov	r5, #0xa
	mov	r0, #0x78
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, #0x1c
	asr	r6, r3, #20
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x21
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_8010704
.Lm955_4ae:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008400

