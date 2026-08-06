	.include "macros.inc"

.thumb_func_start ImilFallsCave_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm922_178c
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_178c
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	bl	OvlFunc_922_20097a8
	b	.Lm922_1790
.Lm922_178c:
	bl	OvlFunc_922_20097e4
.Lm922_1790:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_MapInit

