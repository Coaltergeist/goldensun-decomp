	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Bilibin_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #1
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lm907_8b0
	bl	OvlFunc_907_20088f0
	b	.Lm907_8d0
.Lm907_8b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Lm907_8c6
	bl	OvlFunc_907_2008ae0
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_907_2008ed8
	lsl	r1, #4
	bl	__StartTask
	b	.Lm907_8d0
.Lm907_8c6:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lm907_8d0
	bl	OvlFunc_907_2008d10
.Lm907_8d0:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Bilibin_MapInit

