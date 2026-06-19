	.include "macros.inc"

.thumb_func_start OvlFunc_959_2009038
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r5, r1
	mov	r6, r0
	mov	r8, r3
	bl	__CutsceneStart
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_808e078
	mov	r1, #0
	mov	r7, r0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1074
	mov	r0, r6
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, #1
	mov	r8, r3
	b	.L1082
.L1074:
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #5
	bl	__MapActor_SetAnim
.L1082:
	mov	r0, r7
	bl	__DeleteActor
	bl	__CutsceneEnd
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009038

