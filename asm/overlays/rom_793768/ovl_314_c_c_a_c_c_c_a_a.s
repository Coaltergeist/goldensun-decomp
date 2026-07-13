	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008a4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	ldrh	r2, [r5]
	mov	r3, #6
	ldrsh	r7, [r6, r3]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r5]
	bl	__CutsceneStart
	ldr	r0, =0x1339
	bl	__MessageID
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.La98
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.La98

	.pool_aligned

.La98:
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_898_2009724
	mov	r0, #1
	strh	r7, [r6, #6]
	bl	__WaitFrames
	bl	__CutsceneEnd
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008a4c
