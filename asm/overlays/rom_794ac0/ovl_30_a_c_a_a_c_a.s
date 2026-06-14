	.include "macros.inc"

.thumb_func_start OvlFunc_899_20082a4
	push	{lr}
	bl	__Func_8091660
	ldr	r0, =0x12bb
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082a4

.thumb_func_start OvlFunc_899_20082c0
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x92b
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x94b
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082c0

.thumb_func_start OvlFunc_899_20082e8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x929
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x949
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082e8

.thumb_func_start OvlFunc_899_2008310
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.L32a
	cmp	r3, #0xf
	blt	.L32a
	ldr	r0, =.L61fc
	b	.L33a
.L32a:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L338
	ldr	r0, =.L6250
	b	.L33a
.L338:
	ldr	r0, =.L5e30
.L33a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_2008310

