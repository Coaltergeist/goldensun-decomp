	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20086a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	ldr	r3, =0xcccc
	add	r7, sp, #0x10
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, #0
	str	r3, [r7]
	mov	r5, r0
	mov	r8, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r6, =iwram_3001e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r6]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r10, r3
	mov	r3, #8
	sub	r3, r2
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	ldr	r1, [r5, #0xc]
	mov	r3, #0xd0
	lsl	r3, #13
	add	r1, r3
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0xa0
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	ldr	r2, [r5, #0x10]
	mov	r8, r3
	mov	r3, #0
	str	r4, [sp]
	str	r7, [sp, #0xc]
	bl	OvlFunc_968_2008118
	ldr	r6, [r6]
	mov	r3, r10
	and	r6, r3
	cmp	r6, #0
	bne	.L73c
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Random
	lsl	r3, r0, #3
	add	r3, r0
	lsr	r3, #16
	sub	r3, #4
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	mov	r3, r8
	str	r3, [sp, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_968_2008118
.L73c:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20086a0

	.section .text.after_8754, "ax", %progbits

.thumb_func_start OvlFunc_968_20087d8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	bne	.L886
	bl	__CutsceneStart
	mov	r7, r5
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	add	r7, #0x55
	bl	__Func_80933f8
	strb	r6, [r7]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	ldr	r3, =0xfff00000
	lsl	r2, #16
	add	r2, r3
	lsl	r1, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r3, =OvlFunc_968_20086a0
	mov	r0, #0
	str	r3, [r5, #0x6c]
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092304
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_8092304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_809202c
	bl	__CutsceneEnd
.L886:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20087d8
