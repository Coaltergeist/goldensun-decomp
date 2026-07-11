	.include "macros.inc"

.thumb_func_start OvlFunc_922_2009ad0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #7
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #6
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009ad0

.thumb_func_start OvlFunc_922_2009b1c
	push	{r5, r6, r7, lr}
	mov	r1, #0xf8
	mov	r2, #0x80
	mov	r3, #0x98
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #12
	lsl	r3, #16
	bl	__CreateActor
	mov	r7, r0
	mov	r5, #0
	cmp	r7, #0
	beq	.L1b90
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r7
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xe6
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, =.L2488
	str	r7, [r3]
.L1b90:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009b1c

