	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2009bf0
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm924_1c04
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_1c04:
	mov	r0, #8
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm924_1c16
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_1c16:
	asr	r5, r3, #20
	bl	__CutsceneStart
	cmp	r6, #0xa
	bne	.Lm924_1c7e
	cmp	r5, #0x17
	bne	.Lm924_1c7e
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r3, #0x17
	mov	r2, #0xa
	mov	r0, #6
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.Lm924_6064
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r3, #0x13
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	ldr	r0, =0x878
	bl	__SetFlag
.Lm924_1c7e:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009bf0

