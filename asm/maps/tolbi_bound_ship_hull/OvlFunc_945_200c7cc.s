	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200c7cc
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	sub	r3, #0x12
	cmp	r3, #8
	bhi	.Lm945_4862
	ldr	r2, =.Lm945_47e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_47e0:
	.word	.Lm945_480a
	.word	.Lm945_4804
	.word	.Lm945_480a
	.word	.Lm945_4840
	.word	.Lm945_481c
	.word	.Lm945_481c
	.word	.Lm945_482e
	.word	.Lm945_4840
	.word	.Lm945_4852
.Lm945_4804:
	mov	r0, r5
	mov	r1, #6
	b	.Lm945_4832
.Lm945_480a:
	mov	r0, r5
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0x10
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4862
.Lm945_481c:
	mov	r0, r5
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0x14
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4862
.Lm945_482e:
	mov	r0, r5
	mov	r1, #0xa
.Lm945_4832:
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #8
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4862
.Lm945_4840:
	mov	r0, r5
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4862
.Lm945_4852:
	mov	r0, r5
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_SetAnimSpeed
.Lm945_4862:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c7cc

