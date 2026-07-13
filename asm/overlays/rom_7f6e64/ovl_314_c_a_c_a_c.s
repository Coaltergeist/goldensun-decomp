	.include "macros.inc"

.section .text.after_84bc, "ax", %progbits

.thumb_func_start OvlFunc_969_2008518
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #5
	add	r1, r3
	mov	r7, r5
	mov	r3, #0xe0
	lsl	r3, #8
	add	r7, #0x55
	and	r1, r3
	ldrb	r3, [r7]
	ldr	r0, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r0
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r0
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #14
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.L5dc
	mov	r0, #0x94
	lsl	r0, #2
	bl	__ClearFlag
	bl	OvlFunc_969_20086c0
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #7
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r0, #0x98
	bl	__PlaySound
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
.L5dc:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_2008518

.thumb_func_start OvlFunc_969_20085ec
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	bl	OvlFunc_969_20084bc
	ldr	r5, =.L66e8
	str	r0, [r5]
	cmp	r0, #0
	beq	.L6a8
	mov	r0, #0x94
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r2, =0xfffd0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #2
	bl	__WaitFrames
	ldr	r2, =0xfffe0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #10
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
.L6a8:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20085ec
