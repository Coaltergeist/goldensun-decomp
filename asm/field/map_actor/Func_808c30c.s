	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808c30c  @ 0x0808c30c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	cmp	r5, #0
	bge	.L8c340
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_8091220
	mov	r0, #4
	bl	Func_8091254
	mov	r2, #0xa
	neg	r2, r2
	cmp	r5, r2
	bge	.L8c338
	mov	r0, #0x86
	bl	_PlaySound
	b	.L8c346
.L8c338:
	mov	r0, #0x85
	bl	_PlaySound
	b	.L8c346
.L8c340:
	mov	r0, #0x7e
	bl	_PlaySound
.L8c346:
	bl	_GetPartySize
	cmp	r0, #0
	ble	.L8c390
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r6, r0
.L8c358:
	ldrb	r0, [r7]
	bl	_GetUnit
	mov	r3, r8
	mov	r1, r5
	cmp	r3, #0
	beq	.L8c382
	mov	r2, #0x34
	ldrsh	r3, [r0, r2]
	mov	r1, #0x64
	mov	r0, r5
	mul	r0, r3
	bl	__divsi3
	mov	r1, r0
	cmp	r1, #0
	bne	.L8c382
	mov	r1, r5
	cmp	r1, #0
	bge	.L8c382
	neg	r1, r1
.L8c382:
	ldrb	r0, [r7]
	sub	r6, #1
	bl	_ModifyHP
	add	r7, #1
	cmp	r6, #0
	bne	.L8c358
.L8c390:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808c30c
