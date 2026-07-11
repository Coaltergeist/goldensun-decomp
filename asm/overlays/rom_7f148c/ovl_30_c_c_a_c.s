	.include "macros.inc"

.thumb_func_start OvlFunc_966_2008078
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, r6
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	ldr	r0, =0x26af
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_966__02009638
	mov	r0, r6
	bl	__MapActor_SetBehavior
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008078

.thumb_func_start OvlFunc_966_20080c4
	push	{r5, r6, lr}
	ldr	r5, =0x28be
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lf2
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lf8
.Lf2:
	add	r0, r5, #2
	bl	__MessageID
.Lf8:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20080c4

.thumb_func_start OvlFunc_966_200810c
	push	{lr}
	ldr	r0, =0x9bb
	bl	__SetFlag
	ldr	r0, =0x28b8
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x10
	mov	r0, #0x12
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_200810c

.thumb_func_start OvlFunc_966_2008158
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldr	r2, =.L1ca8
	lsl	r3, r7, #2
	ldrsh	r5, [r2, r3]
	mov	r0, #0
	add	r3, #2
	ldrsh	r6, [r2, r3]
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x9e
	bl	__PlaySound
	cmp	r7, #6
	bne	.L1a4
	lsl	r1, r5, #16
	lsl	r2, r6, #16
	lsr	r1, #16
	lsr	r2, #16
	ldr	r0, =.L1cee
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	b	.L1be
.L1a4:
	lsl	r1, r5, #16
	lsl	r2, r6, #16
	lsr	r1, #16
	lsr	r2, #16
	ldr	r0, =.L1cd8
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
.L1be:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r7
	bl	__Func_8091e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008158

