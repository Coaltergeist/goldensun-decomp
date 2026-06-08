	.include "macros.inc"

.thumb_func_start OvlFunc_883_20089f0
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.La06
	ldr	r0, =.L6e48
	b	.La24
.La06:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.La14
	ldr	r0, =.L6cc8
	b	.La24
.La14:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.La22
	ldr	r0, =.L6ab8
	b	.La24
.La22:
	ldr	r0, =.L68a8
.La24:
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_20089f0

.thumb_func_start OvlFunc_883_2008a44
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1a
	bl	__MapActor_SetPos
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008a44

.thumb_func_start OvlFunc_883_2008a74
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008a74

