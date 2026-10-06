	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_20099c0
	push	{r5, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5418
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x18
	bl	__DeleteFieldActor
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #6
	strh	r5, [r0, #6]
	ldr	r0, =0x903
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1a32
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x27a0000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xa2
	mov	r2, #0xa9
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	b	.Lm943_1a5e
.Lm943_1a32:
	mov	r1, #0xa0
	mov	r2, #0xa3
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xa6
	mov	r2, #0xa7
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xb0
.Lm943_1a5e:
	lsl	r3, #8
	strh	r3, [r0, #6]
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.Lm943_1a76
	bl	OvlFunc_943_200bf30
.Lm943_1a76:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20099c0

