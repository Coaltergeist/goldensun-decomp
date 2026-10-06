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
.Lm968_a46:
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
	bls	.Lm968_a46
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
	bl	__MapActor_PlayPendingSound
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

