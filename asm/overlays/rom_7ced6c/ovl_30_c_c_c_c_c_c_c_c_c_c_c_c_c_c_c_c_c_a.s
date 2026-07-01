	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009a44
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	sub	sp, #0xc
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r6, #8]
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.L1b02
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	strb	r3, [r7]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.L1b04
.L1b02:
	mov	r0, #0
.L1b04:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009a44

.thumb_func_start OvlFunc_946_2009b14
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b14

