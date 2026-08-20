	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_20084ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	bl	__CutsceneStart
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_808e078
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lm909_53a
	mov	r1, #2
	mov	r0, r6
	bl	__MapActor_SetAnim
	ldr	r0, =0x84e
	bl	__SetFlag
	mov	r0, r7
	bl	__SetFlag
	ldr	r0, =0x322
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	b	.Lm909_548
.Lm909_53a:
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #5
	bl	__MapActor_SetAnim
.Lm909_548:
	mov	r0, r8
	bl	__DeleteActor
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20084ec

