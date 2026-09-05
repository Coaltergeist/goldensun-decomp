	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008fb4
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lm916_fc4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm916_19d0
	b	.Lm916_fc8
.Lm916_fc4:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm916_12d0
.Lm916_fc8:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_916_2008f74
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008fb4

