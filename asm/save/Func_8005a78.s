	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005a78  @ 0x08005a78
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f1c
	mov	r6, r1
	ldr	r5, [r3]
	bl	Func_8005b24
	cmp	r0, #0xf
	bls	.L5a8c
	mov	r0, #1
	b	.L5aae
.L5a8c:
	bl	Func_80058ac
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	add	r0, #0x50
	mov	r1, r6
	ldr	r2, =0x840003fc
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5aa4:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5aa4
	mov	r0, #0
.L5aae:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005a78

