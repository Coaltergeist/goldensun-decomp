	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008840
	push	{r5, r6, lr}
	bl	OvlFunc_common1_16f8
	bl	__CutsceneStart
	mov	r1, #0x7f
	mov	r0, #0x78
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
	mov	r5, #9
.L85a:
	mov	r0, #8
	sub	r5, #1
	bl	__MapActor_WaitScript
	cmp	r5, #0
	bge	.L85a
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa5
	mov	r0, #8
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa1
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xa2
	mov	r0, #0
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0xa4
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	mov	r1, #9
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_8091eb0
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x8f
	mov	r1, #4
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8091fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008840

.thumb_func_start OvlFunc_954_2008954
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.L964
	bl	__Func_8093c00
	b	.L968
.L964:
	bl	OvlFunc_954_2008238
.L968:
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008954

