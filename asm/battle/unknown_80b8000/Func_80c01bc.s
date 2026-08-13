	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c01bc  @ 0x080c01bc
	push	{lr}
	ldr	r3, =iwram_3001ef8
	ldr	r0, [r3]
	sub	r3, #0x78
	ldr	r1, [r0]
	ldr	r4, [r3]
	mov	r3, #0x34
	sub	r2, r3, r1
	cmp	r2, #0x20
	ble	.Lc01d2
	mov	r2, #0x20
.Lc01d2:
	cmp	r2, #0
	bge	.Lc01d8
	mov	r2, #0
.Lc01d8:
	ldr	r3, =iwram_3001ad0
	strh	r2, [r3, #2]
	cmp	r1, #0x50
	bhi	.Lc01f0
	lsl	r2, r1, #1
	add	r2, r1
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r2, =0xaf80
	lsl	r3, #3
	add	r3, r2
	strh	r3, [r4, #0x36]
.Lc01f0:
	ldr	r3, [r0]
	add	r2, r3, #1
	str	r2, [r0]
	cmp	r2, #0x50
	bhi	.Lc020a
	mov	r3, #0xb4
	sub	r3, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	Func_80c0cec
	b	.Lc0216
.Lc020a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_80c0cec
.Lc0216:
	pop	{r0}
	bx	r0
.func_end Func_80c01bc
