	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008fec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, [r6, #8]
	str	r3, [r5, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	ldr	r3, [r6, #0xc]
	mov	r0, #1
	str	r3, [r5, #0x14]
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #5
	mov	r1, #0x6e
	ldr	r2, =0x11b
	bl	__Func_80921c4
	mov	r2, #2
	mov	r0, #0
	mov	r1, #5
	bl	__Func_8092848
	ldr	r0, =0xf39
	bl	__MessageID
	ldr	r2, [r6, #8]
	ldr	r3, [r5, #8]
	cmp	r2, r3
	bge	.L1066
	ldr	r0, =0xa005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	b	.L1070
.L1066:
	ldr	r0, =0x8005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
.L1070:
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L109e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.L109e:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0x6e
	ldr	r2, =0x12f
	bl	__Func_80921c4
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008fec

.thumb_func_start OvlFunc_883_20090d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, =0x808
	sub	sp, #0xc
	bl	__GetFlag
	cmp	r0, #0
	bne	.L11b2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r8, r3
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	ldr	r0, =0xf4d
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r8
	str	r7, [r3]
	mov	r10, r2
	mov	r6, #0
	mov	r5, r7
.L114e:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L114e
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0xf4f
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r6, #0
	mov	r5, r7
.L1180:
	ldr	r3, [r5, #8]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L1180
	mov	r3, r10
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x46
	ldr	r2, =0x2e5
	bl	__Func_80921c4
	bl	__CutsceneEnd
.L11b2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20090d8

.thumb_func_start OvlFunc_883_20091d8
	push	{r5, lr}
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1230
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r5, =0xf4d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	add	r5, #2
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x45
	ldr	r2, =0x366
	bl	__Func_80921c4
	bl	__CutsceneEnd
.L1230:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20091d8
