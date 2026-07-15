	.include "macros.inc"

.thumb_func_start OvlFunc_931_2008524
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	sub	sp, #8
	mov	r9, r3
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.L53e:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L54e
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L54e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L53e
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	sub	r3, #2
	lsl	r3, #16
	asr	r3, #16
	ldr	r5, =.L1e70
	lsl	r6, r3, #3
	mov	r10, r3
	add	r3, r6, #4
	ldrsh	r1, [r5, r3]
	add	r3, r5
	mov	r2, r10
	mov	r8, r1
	mov	r1, #2
	ldrsh	r7, [r3, r1]
	cmp	r2, #1
	bne	.L5d4
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, r8
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r6, r8
	add	r6, #2
	mov	r1, #0x23
	mov	r2, r6
	mov	r3, r7
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, r8
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	mov	r1, #0x23
	mov	r2, r6
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	b	.L5fe
.L5d4:
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, r10
	cmp	r3, #3
	bne	.L5f4
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x21
	mov	r1, #0x2a
	mov	r2, #8
	mov	r3, #0x11
	bl	__CopyMapTiles
.L5f4:
	ldr	r0, [r5, r6]
	mov	r1, r8
	mov	r2, r7
	bl	__Func_8010560
.L5fe:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #1
	str	r2, [r3]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, r10
	cmp	r2, #6
	bne	.L642
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092208
	b	.L66a
.L642:
	mov	r3, r10
	cmp	r3, #1
	beq	.L656
	mov	r2, #4
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	b	.L66a
.L656:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #4
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
.L66a:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r9
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008524

.section .text.after_86a4, "ax", %progbits

