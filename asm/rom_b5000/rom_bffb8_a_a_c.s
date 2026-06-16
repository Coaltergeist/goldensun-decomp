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

.thumb_func_start Func_80c0228  @ 0x080c0228
	push	{r5, lr}
	ldr	r3, =iwram_3001ef8
	ldr	r3, [r3]
	ldr	r0, [r3]
	cmp	r0, #0x4f
	bhi	.Lc0286
	mov	r3, #7
	ldr	r2, =0xf081
	and	r3, r0
	add	r4, r3, r2
	mov	r3, r0
	cmp	r0, #0
	bge	.Lc0244
	add	r3, r0, #7
.Lc0244:
	asr	r3, #3
	mov	r2, #0xd
	sub	r2, r3
	ldr	r5, =0x6006000
	lsl	r3, r2, #6
	mov	r1, #0
	add	r2, r3, r5
.Lc0252:
	add	r1, #1
	strh	r4, [r2]
	add	r2, #2
	cmp	r1, #0x20
	bne	.Lc0252
	mov	r3, #0x80
	lsl	r3, #4
	orr	r4, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc026a
	add	r3, #7
.Lc026a:
	asr	r3, #3
	mov	r2, r3
	add	r2, #0xd
	cmp	r2, #0x14
	bhi	.Lc0286
	ldr	r0, =0x6006000
	lsl	r3, r2, #6
	mov	r1, #0
	add	r2, r3, r0
.Lc027c:
	add	r1, #1
	strh	r4, [r2]
	add	r2, #2
	cmp	r1, #0x20
	bne	.Lc027c
.Lc0286:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c0228

