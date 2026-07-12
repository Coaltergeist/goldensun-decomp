	.include "macros.inc"

.thumb_func_start OvlFunc_950_20087b0
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r0, =0x8bd
	bl	__GetFlag
	cmp	r0, #0
	bne	.L7fc
	ldr	r5, =0x2399
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L7ec
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.L7f2
.L7ec:
	add	r0, r5, #2
	bl	__MessageID
.L7f2:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	b	.L83c
.L7fc:
	ldr	r0, =0x8be
	bl	__GetFlag
	cmp	r0, #0
	bne	.L82e
	ldr	r0, =0x8be
	bl	__SetFlag
	ldr	r0, =0x239c
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r6
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
.L82e:
	ldr	r0, =0x239d
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.L83c:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_20087b0
