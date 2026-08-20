	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f3858  @ 0x080f3858
	push	{r5, lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, [r3]
	mov	r5, r0
	cmp	r4, #0
	beq	.Lf388a
	ldr	r1, =0x3001
	add	r3, r4, r1
	add	r1, #1
	mov	r2, #0
	strb	r5, [r3]
	add	r3, r4, r1
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, #0x80
	add	r1, r4, r3
	mov	r3, #0xe0
	lsl	r2, #3
	lsl	r3, #5
	add	r0, r4, r2
	add	r2, r4, r3
	mov	r3, r5
	bl	Func_80f2ebc
.Lf388a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80f3858

