	.include "macros.inc"


.thumb_func_start OvlFunc_939_2008b6c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.Lb7a:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb8a
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.Lb8a:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lb7a
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	sub	r5, #4
	lsl	r4, r5, #3
	ldr	r0, =.L250c
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	cmp	r5, #6
	beq	.Lbec
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
.Lbec:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008b6c

	.section .text.after_8c10, "ax", %progbits

.thumb_func_start OvlFunc_939_2008c74
	push	{r5, r6, lr}
	ldr	r0, =0x242
	sub	sp, #8
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_80922c4
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r5, #0x29
	mov	r6, #4
	mov	r1, #4
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c74

