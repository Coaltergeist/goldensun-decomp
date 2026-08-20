	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2da8  @ 0x080b2da8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r5, r1
	bl	_GetUnit
	mov	r2, r0
	cmp	r5, #0
	bne	.Lb2dc8
	ldrh	r3, [r2, #0x34]
	mov	r0, r7
	strh	r3, [r2, #0x38]
	bl	_UpdateStatBarPercent
	b	.Lb2e20
.Lb2dc8:
	cmp	r5, #1
	bne	.Lb2dd0
	ldr	r3, =0x131
	b	.Lb2dd8
.Lb2dd0:
	cmp	r5, #2
	bne	.Lb2de0
	mov	r3, #0xa0
	lsl	r3, #1
.Lb2dd8:
	add	r2, r3
	mov	r3, #0
	strb	r3, [r2]
	b	.Lb2e20
.Lb2de0:
	cmp	r5, #3
	bne	.Lb2e20
	mov	r3, #0x80
	lsl	r3, #2
	mov	r5, r2
	mov	r8, r3
	mov	r6, #0xe
	add	r5, #0xd8
.Lb2df0:
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r0, [r5]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r2, [r5]
	mov	r3, r8
	eor	r3, r2
	strh	r3, [r5]
	mov	r0, r7
	bl	_CalcStats
.Lb2e18:
	sub	r6, #1
	add	r5, #2
	cmp	r6, #0
	bge	.Lb2df0
.Lb2e20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2da8

