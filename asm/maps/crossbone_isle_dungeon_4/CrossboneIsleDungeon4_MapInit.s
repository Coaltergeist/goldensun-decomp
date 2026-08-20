	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsleDungeon4_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	add	r5, r3, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x75
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.Lm948_1f9e
	bl	OvlFunc_948_200a188
	ldrh	r1, [r5]
.Lm948_1f9e:
	lsl	r3, r1, #16
	ldr	r2, =0x76
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm948_1fae
	bl	OvlFunc_948_200a290
	ldrh	r1, [r5]
.Lm948_1fae:
	lsl	r3, r1, #16
	ldr	r2, =0x78
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm948_1fbc
	bl	OvlFunc_948_200a334
.Lm948_1fbc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon4_MapInit

