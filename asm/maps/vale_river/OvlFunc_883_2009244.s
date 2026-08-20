	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_2009244
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r1, #0xa
	mov	r2, #0xb
	mov	r3, #1
	mov	r0, #0
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009244

