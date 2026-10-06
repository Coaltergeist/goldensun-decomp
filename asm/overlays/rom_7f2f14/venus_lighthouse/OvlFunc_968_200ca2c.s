	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200ca2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
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
	mov	r2, #0
	lsl	r3, #8
	str	r3, [r7, #0x48]
	mov	r10, r2
	mov	r3, #0x55
	add	r3, r7
	str	r2, [r7, #0x44]
	mov	r2, r10
	strb	r2, [r3]
	mov	r8, r3
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #3
	mov	r2, r8
	strb	r3, [r2]
	mov	r0, #0x18
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
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
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r2, r8
	mov	r3, r10
	strb	r3, [r2]
	mov	r3, r6
	mov	r2, r10
	add	r3, #0x55
	mov	r1, #0x80
	strb	r2, [r3]
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =OvlFunc_968_200c968
	mov	r0, #0x3c
	str	r3, [r7, #0x6c]
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	ldr	r0, =0x101
	bl	__SetFlag
	mov	r2, #0
.Lm968_4b92:
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0x7f
	bls	.Lm968_4b92
	mov	r0, #0x15
	bl	__Func_8091e9c
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200ca2c

