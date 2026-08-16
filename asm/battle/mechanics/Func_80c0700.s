	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0700  @ 0x080c0700
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	ldr	r0, [r3]
	ldr	r3, =0x544
	sub	sp, #4
	mov	r4, r1
	add	r5, r0, r3
	mov	r6, sp
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	str	r2, [r6]
	strh	r3, [r3]
	cmp	r4, #0
	bne	.Lc072a
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x50000c0
	ldr	r2, =0x80000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lc074a
.Lc072a:
	ldr	r3, =0x644
	add	r0, r3
	lsl	r3, r4, #4
	add	r3, r4
	lsl	r3, #4
	add	r3, r4
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	str	r2, [r0]
	ldr	r1, =0x50000c0
	mov	r0, r5
	mov	r3, #0x80
	bl	UploadBGPalette
.Lc074a:
	ldr	r2, [r6]
	ldr	r3, =REG_IME
	add	sp, #4
	strh	r2, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0700
