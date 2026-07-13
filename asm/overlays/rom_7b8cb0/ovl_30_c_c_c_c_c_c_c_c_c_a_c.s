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

.thumb_func_start OvlFunc_931_20086a4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r2, #0x10
	mov	r1, #2
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r3, #0xb6
	lsl	r3, #1
	add	r5, r3
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20086a4

.thumb_func_start OvlFunc_931_20086f0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L71e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L71e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.L71e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.L766
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L75e
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.L75c
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r3, #4
	mov	r1, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8012330
	ldr	r2, [r5, #0x14]
.L75c:
	str	r2, [r5, #0xc]
.L75e:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.L76c
.L766:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.L76c:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L796
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.L796:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.L7a8
	mov	r3, #0
	strh	r3, [r6]
.L7a8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20086f0

.thumb_func_start OvlFunc_931_20087b8
	push	{lr}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r3, =0x6666
	str	r3, [r1, #0x48]
	ldr	r3, =OvlFunc_931_20086f0
	mov	r0, #0x12
	str	r3, [r1, #0x6c]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	mov	r2, #0xe6
	mov	r0, #0x12
	mov	r1, #0x1c
	lsl	r2, #1
	bl	__Func_8092158
	mov	r2, #0xe0
	mov	r1, #0x18
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_8092158
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x12
	bl	__DeleteFieldActor
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #1
	bl	__MapActor_SetAnim
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20087b8

