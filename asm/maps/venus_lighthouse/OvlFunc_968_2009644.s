	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009644
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	bne	.Lm968_1692
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xfffe0000
	mov	r0, #0x80
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	bl	__CopyMapTiles
.Lm968_1692:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009644

