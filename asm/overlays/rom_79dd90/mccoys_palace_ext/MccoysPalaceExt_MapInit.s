	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MccoysPalaceExt_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r5, #0xe0
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r5, #1
	str	r3, [r2, r5]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =gState
	ldrsh	r2, [r3, r5]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Lm910_4f6
	bl	OvlFunc_910_200850c
.Lm910_4f6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end MccoysPalaceExt_MapInit

