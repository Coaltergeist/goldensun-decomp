	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_2008200
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x81a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_21a
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_801776c
	b	.Lm895_23a
.Lm895_21a:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0xf01
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_23a
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lm895_23a:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008200

