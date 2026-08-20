	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_2008100
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.Lm970_132
	sub	r3, #1
	strh	r3, [r2]
	bl	__Random
	mov	r5, r0
	bl	__Random
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, =0xcccc
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	b	.Lm970_158
.Lm970_132:
	mov	r2, r6
	add	r2, #0x66
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	cmp	r3, #0
	beq	.Lm970_158
	strh	r1, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =gScript_970__020094c4
	mov	r0, r6
	bl	__Actor_SetScript
.Lm970_158:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008100

