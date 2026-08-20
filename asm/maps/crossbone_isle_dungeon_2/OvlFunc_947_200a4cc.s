	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a4cc
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xff
	str	r3, [sp, #4]
	asr	r1, #20
	mov	r3, #1
	asr	r2, #20
	mov	r0, #2
	bl	OvlFunc_947_2008528
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x10
	bne	.Lm947_252a
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	bne	.Lm947_252a
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0xfffe0000
	mov	r0, #0x81
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__SetFlag
.Lm947_252a:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a4cc

