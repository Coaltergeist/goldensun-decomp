	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20089c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x44
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r5, r7
	str	r3, [r7, #0x48]
	add	r5, #0x55
	mov	r3, #0
	str	r3, [r7, #0x44]
	strb	r3, [r5]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r3, #3
	strb	r3, [r5]
	mov	r0, #0x18
	bl	__CutsceneWait
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_968_200896c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	mov	r2, #0
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r10, r0
	mov	r8, r2
	add	r6, sp, #0x10
.La46:
	mov	r3, r8
	lsl	r5, r3, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__sin
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	ldr	r5, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	ldr	r4, [r6, #4]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r0, [sp, #8]
	mov	r0, r10
	str	r0, [sp, #0xc]
	mov	r0, r5
	str	r4, [sp]
	bl	OvlFunc_968_2008118
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.La46
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	bl	__Func_809202c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x44]
	bl	__CutsceneEnd
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20089c8

	.section .text.after_8b08, "ax", %progbits

	.section .text.after_8c5c, "ax", %progbits

.thumb_func_start OvlFunc_968_2008cc8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	ldrb	r3, [r2]
	ldr	r7, =0xfff00000
	mov	r9, r3
	ldr	r3, [r5, #8]
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r2, #0x80
	ldrh	r1, [r5, #6]
	lsl	r2, #6
	mov	r3, #0xc0
	lsl	r3, #8
	add	r1, r2
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r6
	mov	r10, r3
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #1
	beq	.Ldec
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	bne	.Ldec
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r2, r10
	mov	r0, #0x80
	and	r1, r2
	lsl	r0, #14
	mov	r2, r6
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	bne	.Ldec
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.Ldec
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
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
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
	mov	r2, r9
	mov	r3, r8
	strb	r2, [r3]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.Ldee
.Ldec:
	mov	r0, #0
.Ldee:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008cc8
