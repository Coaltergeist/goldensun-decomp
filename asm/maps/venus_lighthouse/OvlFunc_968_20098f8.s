	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20098f8
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	bl	__CutsceneStart
	mov	r3, #0xc
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xb
	mov	r2, #0x33
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x33
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	mov	r5, #0
.Lm968_1930:
	mov	r0, r5
	add	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x32
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	bl	__Func_8010704
	cmp	r5, #2
	bls	.Lm968_1930
	mov	r0, #0xa
	mov	r1, #9
	bl	OvlFunc_968_2008910
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20098f8

