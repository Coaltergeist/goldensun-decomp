.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_955_20089b0
	push	{r5, lr}
	mov	r0, #0x1f
	sub	sp, #8
	bl	__Func_809ad90
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L9d0
	ldr	r2, =.L4838
	mov	r3, #0
	str	r3, [r2]
.L9d0:
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =OvlFunc_955_2008714
	bl	__StopTask
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r5, #0x3a
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20089b0

.thumb_func_start OvlFunc_955_2008a1c
	push	{r5, r6, lr}
	bl	OvlFunc_common1_16f8
	bl	__CutsceneStart
	mov	r1, #0x59
	mov	r0, #0x4d
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
	mov	r5, #9
.La36:
	mov	r0, #8
	sub	r5, #1
	bl	__MapActor_WaitScript
	cmp	r5, #0
	bge	.La36
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x58
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0x78
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
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x80
	mov	r0, #0
	mov	r1, #0x70
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #8
	mov	r1, #0x60
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	mov	r1, #9
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_8091eb0
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x90
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
.func_end OvlFunc_955_2008a1c

