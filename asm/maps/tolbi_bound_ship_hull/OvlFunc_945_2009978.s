	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009978
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__ClearFlag
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_19b0
	ldr	r0, =0x6f
	mov	r1, #0x10
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #0
	bl	__StartMapBattle
	b	.Lm945_19e6
.Lm945_19b0:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_19cc
	ldr	r0, =0x6f
	mov	r1, #0x12
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #1
	bl	__StartMapBattle
	b	.Lm945_19e6
.Lm945_19cc:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_19e6
	ldr	r0, =0x6f
	mov	r1, #0x14
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #2
	bl	__StartMapBattle
.Lm945_19e6:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009978

