	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_2008804
	push	{lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__CutsceneStart
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm901_840
	ldr	r0, =_MSG_1cc0
	bl	__MessageID
	mov	r0, #0xe
	bl	OvlFunc_901_20084b4
	b	.Lm901_84a

	.pool_aligned

.Lm901_840:
	bl	OvlFunc_901_200858c
	ldr	r0, =0x307
	bl	__SetFlag
.Lm901_84a:
	bl	__CutsceneEnd
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008804

