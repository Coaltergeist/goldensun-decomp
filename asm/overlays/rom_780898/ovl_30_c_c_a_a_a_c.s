	.include "macros.inc"

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

