	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80d5258
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld5268
	mov	r1, #0
	bl	Func_80d52c8
	b	.Ld526e
.Ld5268:
	mov	r1, #1
	bl	Func_80d52c8
.Ld526e:
	pop	{r0}
	bx	r0
.func_end Func_80d5258

