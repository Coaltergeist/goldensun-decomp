	.include "macros.inc"

.thumb_func_start OvlFunc_924_2008f84
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r3, =OvlFunc_924_2008cd0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x3333
	mov	r0, #0
	str	r3, [r5, #0x30]
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, r6
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2008f84

.thumb_func_start OvlFunc_924_2008ffc
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r2, =0x3333
	mov	r0, #0
	ldr	r1, =0x6666
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, #0x80
	lsl	r3, #12
	lsl	r5, #19
	add	r5, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2008ffc

