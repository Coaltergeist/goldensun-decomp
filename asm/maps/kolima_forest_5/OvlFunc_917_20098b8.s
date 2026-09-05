	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20098b8
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lm917_18c8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm917_24e0
	b	.Lm917_18cc
.Lm917_18c8:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm917_1de0
.Lm917_18cc:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_917_2009878
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20098b8

