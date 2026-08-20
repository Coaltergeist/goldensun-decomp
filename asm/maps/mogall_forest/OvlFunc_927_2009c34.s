	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009c34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r6, [r0, #8]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x10]
	mov	r3, #1
	str	r3, [sp]
	asr	r6, #20
	asr	r5, #20
	mov	r8, r3
	mov	r3, #0xff
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r1, r6
	mov	r10, r3
	mov	r0, #2
	mov	r3, #1
	bl	OvlFunc_927_2008244
	mov	r7, #0
	mov	r3, r8
	mov	r2, r5
	add	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	mov	r2, r5
	sub	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	add	r2, r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	sub	r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r2, r5
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x1b
	bne	.Lm927_1cee
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, r8
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x2b
	mov	r2, #0x17
	mov	r3, #1
	bl	OvlFunc_927_2008244
.Lm927_1cee:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009c34

