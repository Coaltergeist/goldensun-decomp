	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091254
	push	{r5, lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, [r3]
	mov	r5, r0
	cmp	r4, #0
	beq	.L91286
	ldr	r1, =0x2a01
	add	r3, r4, r1
	add	r1, #1
	mov	r2, #0
	strb	r5, [r3]
	add	r3, r4, r1
	strb	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #4
	mov	r2, #0xe0
	add	r1, r4, r3
	mov	r3, #0xc4
	lsl	r2, #2
	lsl	r3, #5
	add	r0, r4, r2
	add	r2, r4, r3
	mov	r3, r5
	bl	Func_809088c
.L91286:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091254

.thumb_func_start Func_8091294
	push	{lr}
	cmp	r0, #0x1f
	ble	.L9129e
	mov	r0, #0x1f
	b	.L912a4
.L9129e:
	cmp	r0, #0
	bge	.L912a4
	mov	r0, #0
.L912a4:
	pop	{r1}
	bx	r1
.func_end Func_8091294

