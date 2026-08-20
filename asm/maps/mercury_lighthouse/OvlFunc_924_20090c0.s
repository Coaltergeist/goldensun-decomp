	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_20090c0
	push	{lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_1140
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_1140
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_1140
	ldr	r0, =0x876
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0xd
	bl	__Func_8091e9c
	b	.Lm924_1146
.Lm924_1140:
	ldr	r0, =0x876
	bl	__ClearFlag
.Lm924_1146:
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20090c0

