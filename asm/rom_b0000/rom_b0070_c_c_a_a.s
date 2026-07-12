	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b27b0  @ 0x080b27b0
	push	{r5, lr}
	mov	r5, r1
	bl	_GetUnit
	mov	r2, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb27c8
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	ble	.Lb27fe
.Lb27c8:
	cmp	r5, #1
	bne	.Lb27da
	ldr	r1, =0x131
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lb27fe
.Lb27da:
	cmp	r5, #2
	bne	.Lb27ea
	mov	r1, #0xa0
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb27fe
.Lb27ea:
	cmp	r5, #3
	bne	.Lb2800
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb2800
.Lb27fe:
	mov	r0, #1
.Lb2800:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b27b0
