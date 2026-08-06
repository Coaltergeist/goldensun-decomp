	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b484
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xe8
	bl	__PlaySound
	ldr	r2, [r5, #8]
	ldr	r3, =0xfff00000
	and	r2, r3
	mov	r10, r2
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r2
	ldr	r2, [r5, #0x10]
	and	r2, r3
	mov	r11, r2
	mov	r3, #0x80
	add	r10, r9
	lsl	r3, #10
	add	r9, r11
	ldr	r2, [r5, #0xc]
	mov	r1, r10
	str	r3, [r5, #0x34]
	mov	r0, r5
	mov	r3, r9
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x22
	strb	r6, [r3]
	mov	r2, r9
	mov	r3, r10
	str	r3, [r5, #8]
	str	r2, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x2c]
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0xf
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #0x1e
	bl	__WaitFrames
	ldr	r5, [r5, #0x50]
	mov	r2, #1
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x27
	strb	r2, [r3]
	ldr	r0, [r5, #0x2c]
	bl	__DeleteSpriteLayer
	str	r6, [r5, #0x2c]
	mov	r3, r8
	add	r5, #0x25
	strb	r3, [r5]
	mov	r2, #0xfa
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__GetFieldActor
	mov	r5, r0
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	mov	r2, r9
	lsl	r3, #9
	str	r3, [r5, #0x48]
	ldr	r1, [r5, #0x50]
	str	r2, [r5, #0x10]
	sub	r6, #0xd
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #13
	add	r11, r3
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r3, r11
	bl	__Actor_TravelTo
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__WaitFrames
	ldr	r2, [r5, #0x50]
	ldrb	r3, [r2, #9]
	and	r6, r3
	mov	r3, #8
	orr	r6, r3
	strb	r6, [r2, #9]
	mov	r0, #0x9f
	bl	__PlaySound
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b484

