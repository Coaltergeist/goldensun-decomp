	.include "macros.inc"

.thumb_func_start OvlFunc_934_2009390
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r7, sp, #8
	mov	r0, r7
	bl	OvlFunc_934_2008758
	cmp	r0, #0
	beq	.L1498
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r7, #0xc]
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	OvlFunc_934_20088ec
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #0x11
	bne	.L1498
	mov	r1, #3
	ldr	r0, [r7, #4]
	bl	__MapActor_SetAnim
	ldr	r0, [r7, #4]
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r0, [r7, #4]
	bl	__MapActor_GetActor
	mov	r1, #0xc
	str	r6, [r0, #0x44]
	mov	r2, #0
	neg	r1, r1
	ldr	r0, [r7, #4]
	bl	__Func_809228c
	ldr	r0, [r7, #4]
	bl	__MapActor_WaitMovement
	ldr	r0, [r7, #4]
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092b08
	ldr	r0, [r7, #4]
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #6
	mov	r2, #0
	neg	r1, r1
	ldr	r0, [r7, #4]
	bl	__Func_809228c
	ldr	r0, [r7, #4]
	bl	__MapActor_GetActor
	bl	OvlFunc_934_2008cd0
	mov	r1, #8
	ldr	r0, [r7, #4]
	bl	__MapActor_SetAnim
	ldr	r0, [r7, #4]
	bl	__MapActor_GetActor
	mov	r3, #2
	mov	r8, r3
	add	r0, #0x23
	mov	r1, r8
	strb	r1, [r0]
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #8]
	asr	r2, #20
	mov	r5, #4
	asr	r1, #20
	sub	r2, #2
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #8]
	asr	r2, #20
	asr	r1, #20
	sub	r2, #2
	mov	r3, #1
	mov	r0, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x12
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	ldr	r0, =0x203
	bl	__SetFlag
	mov	r0, #0xf0
	bl	__PlaySound
.L1498:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009390

.thumb_func_start OvlFunc_934_20094ac
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xef
	bl	__PlaySound
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #9
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0
	str	r6, [r0, #0x44]
	mov	r1, #0xc
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, #6
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #9
	bl	__MapActor_GetActor
	bl	OvlFunc_934_2008cd0
	mov	r0, #9
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r5, #4
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	ldr	r0, =0x202
	bl	__SetFlag
	mov	r0, #0xf0
	bl	__PlaySound
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_20094ac

	.section .data

.L1f00:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f00, (0x1f60-0x1f00)
