	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitSpriteLayer  @ 0x0800b868
	push	{r5, r6, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb8a6
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_GetSpriteInfo
	mov	r6, r0
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.Lb8a6
	ldr	r0, [r6, #0xc]
	cmp	r0, #0
	bne	.Lb88e
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	GetCachedSpriteGFX
.Lb88e:
	ldrb	r3, [r6, #4]
	strb	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r0, [r5, #8]
	str	r3, [r5, #0xc]
	ldrb	r3, [r6, #0xa]
	mov	r2, #0
	strb	r3, [r5, #7]
	mov	r3, #0xff
	strb	r3, [r5, #0x16]
	str	r2, [r5, #0x10]
	strb	r2, [r5, #0x14]
.Lb8a6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end InitSpriteLayer

