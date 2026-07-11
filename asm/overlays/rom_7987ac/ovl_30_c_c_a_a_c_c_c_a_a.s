	.include "macros.inc"

.thumb_func_start OvlFunc_902_200811c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1cd4
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L196
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L196:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_8093040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x868
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_200811c

