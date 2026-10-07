	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8f08  @ 0x080b8f08
	push	{r5, r6, lr}
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, r5
	sub	sp, #0x1c
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	mov	r0, r5
	cmp	r3, #0
	bne	.Lb8f4e
	cmp	r5, #0x7f
	ble	.Lb8f2a
	mov	r6, sp
	mov	r0, #2
	b	.Lb8f2e
.Lb8f2a:
	mov	r6, sp
	mov	r0, #1
.Lb8f2e:
	mov	r1, r6
	bl	Func_80b6b40
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb8f40
	mov	r0, #0x80
	lsl	r0, #1
	b	.Lb8f4e
.Lb8f40:
	bl	Random
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	ldrsh	r0, [r6, r3]
.Lb8f4e:
	add	sp, #0x1c
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b8f08
