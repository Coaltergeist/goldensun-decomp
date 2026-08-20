	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a8a8
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808c44c
	ldr	r0, =0x264c
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_28d4
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lm881_28d4:
	bl	__Func_808c4c0
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8a8

