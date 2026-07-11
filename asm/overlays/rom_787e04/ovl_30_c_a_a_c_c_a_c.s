	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20081e0
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0xf5b
	bl	__MessageID
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L25a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25a:
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #4
	bl	__Func_8093040
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20081e0

