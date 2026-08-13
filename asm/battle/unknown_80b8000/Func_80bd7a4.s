	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bd7a4  @ 0x080bd7a4
	push	{lr}
	mov	r2, #0x84
	ldr	r3, =REG_DMA3SAD
	mov	r0, #0
	mov	r1, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_30000c4
	ldr	r0, [r3]
	bl	_call_via_r0
	pop	{r0}
	bx	r0
.func_end Func_80bd7a4
