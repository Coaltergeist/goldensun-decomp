	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2009420
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm924_1434
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_1434:
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm924_1446
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_1446:
	asr	r5, r3, #20
	bl	__CutsceneStart
	cmp	r6, #5
	bne	.Lm924_14b0
	cmp	r5, #0xd
	bne	.Lm924_14b0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r3, #0xb
	mov	r2, #5
	mov	r0, #5
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.Lm924_6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x874
	bl	__SetFlag
.Lm924_14b0:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009420

