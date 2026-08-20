	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_942e0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	mov	r1, #0x1b
	mov	r0, r6
	bl	_Sprite_AddLayer
	add	r6, #0x26
	mov	r1, #0
	strb	r1, [r6]
	mov	r3, #0xf
	strb	r3, [r0, #5]
	ldr	r2, =0xfff00000
	ldr	r3, [r5, #8]
	mov	r0, #0x80
	and	r3, r2
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r1, [r5, #0x24]
	str	r1, [r5, #0x2c]
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r1, r8
	bl	_Actor_SetAnim
	mov	r0, #0x12
	bl	WaitFrames
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_942e0

