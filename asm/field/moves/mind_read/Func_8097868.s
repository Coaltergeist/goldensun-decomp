	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097868  @ 0x08097868
	push	{lr}
	ldr	r3, =iwram_3001ea8
	mov	r2, #0xa5
	ldr	r4, [r3]
	lsl	r2, #2
	add	r3, r4, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L978a8
	sub	r2, #0xa
	add	r3, r4, r2
	ldrb	r3, [r3]
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #4
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	lsl	r0, #2
	ldrh	r2, [r3, #0xa]
	add	r0, r4, r0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L978a8:
	pop	{r0}
	bx	r0
.func_end Func_8097868
