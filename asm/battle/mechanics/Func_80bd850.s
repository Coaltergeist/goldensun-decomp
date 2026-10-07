	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bd850  @ 0x080bd850
	push	{lr}
	mov	r12, r3
	mov	r3, r9
	push	{r3}
	mov	r3, r12
	sub	sp, #4
	mov	r3, r9
	str	r3, [sp]
	ldrb	r3, [r0, #0x1c]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r2, [r3, #2]
	ldr	r3, =0x6010000
	add	r2, r3
	mov	r3, r0
	add	r3, #0x20
	add	r0, #0x21
	ldrb	r1, [r3]
	ldrb	r3, [r0]
	mov	r0, r2
	mul	r1, r3
	ldr	r3, =Func_80008d4
	bl	_call_via_r3
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r0}
	bx	r0
.func_end Func_80bd850
