	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_2008ddc
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lm915_dec
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm915_17e0
	b	.Lm915_df0
.Lm915_dec:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm915_10e0
.Lm915_df0:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_915_2008d9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_2008ddc

