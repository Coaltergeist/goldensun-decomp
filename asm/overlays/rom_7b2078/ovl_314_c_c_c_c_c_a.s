	.include "macros.inc"

.thumb_func_start OvlFunc_926_200a68c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	mov	r1, #7
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #6
	bl	__MapActor_SetAnim
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a68c

.thumb_func_start OvlFunc_926_200a6d8
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r5, =OvlFunc_926_200a5b8
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__StartTask
	ldr	r1, =0x3333
	mov	r0, #0
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__MapTransitionOut
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #0
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
	mov	r0, r5
	bl	__StopTask
	bl	__Func_8091e20
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a6d8

