	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009fdc
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #0x48
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r3, #1
	mov	r1, #0x2b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r0, #0x65
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r1, #0x88
	mov	r2, #0xc6
	mov	r0, #0xf
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xae
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009fdc

.thumb_func_start OvlFunc_964_200a040
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #8
	mov	r1, #0x71
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x31
	mov	r3, #1
	mov	r1, #0x6b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x65
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a040

.thumb_func_start OvlFunc_964_200a0a4
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x13
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #8
	mov	r0, #0x53
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r3, #1
	mov	r1, #0x38
	mov	r2, #1
	asr	r5, #20
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r6, #0
	cmp	r3, #0x19
	bne	.L2194
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L2194
	mov	r6, #1
.L2194:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21b2
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L21b2
	add	r6, #1
.L21b2:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.L21d0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21d0
	add	r6, #1
.L21d0:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21ee
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21ee
	add	r6, #1
.L21ee:
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x18
	bne	.L220c
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x30
	bne	.L220c
	add	r6, #1
.L220c:
	cmp	r6, #5
	bne	.L227c
	ldr	r0, =0x984
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2220
	bl	__CutsceneEnd
	b	.L22e4
.L2220:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x984
	bl	__SetFlag
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L33ec
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_8010560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #0x3c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
	b	.L22e0
.L227c:
	ldr	r0, =0x984
	bl	__GetFlag
	cmp	r0, #0
	beq	.L22e0
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x984
	bl	__ClearFlag
	mov	r0, #0x9f
	bl	__PlaySound
	ldr	r0, =.L340c
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_8010560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x2f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
.L22e0:
	bl	__CutsceneEnd
.L22e4:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a0a4
