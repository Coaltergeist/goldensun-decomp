	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Player_ExitStairs  @ 0x08094380
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r6, r0
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r5, r0
	ldr	r2, [r5, #0x50]
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x1b
	bl	_Sprite_AddLayer
	mov	r3, #0
	mov	r10, r3
	mov	r7, r8
	add	r7, #0x26
	mov	r1, r10
	strb	r1, [r7]
	mov	r3, #0xf
	ldr	r2, =0xfff00000
	strb	r3, [r0, #5]
	mov	r1, #0x80
	ldr	r3, [r5, #8]
	lsl	r1, #12
	and	r3, r2
	mov	r9, r1
	add	r3, r9
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r1, r6
	str	r3, [r5, #0x10]
	mov	r0, r5
	bl	_Actor_SetAnim
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r3, r8
	add	r3, #0x27
	mov	r6, #1
	strb	r6, [r3]
	mov	r2, r8
	ldr	r0, [r2, #0x2c]
	bl	_DeleteSpriteLayer
	mov	r3, r10
	mov	r1, r8
	str	r3, [r1, #0x2c]
	strb	r6, [r7]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	str	r3, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	mov	r0, r5
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	add	r3, r9
	bl	_Actor_TravelTo
	mov	r0, r5
	bl	_Actor_WaitMovement
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Player_ExitStairs

