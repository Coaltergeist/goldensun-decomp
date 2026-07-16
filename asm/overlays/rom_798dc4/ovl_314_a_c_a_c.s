	.include "macros.inc"

.thumb_func_start OvlFunc_903_200843c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r5, #0xb
	lsl	r3, #1
	sub	r5, r3
	lsl	r5, #4
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, r5
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	bl	OvlFunc_903_2008348
	bl	__Func_809202c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_200843c

