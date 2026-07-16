	.include "macros.inc"
	.include "gba.inc"


	.section .text.after_8274, "ax", %progbits

.thumb_func_start OvlFunc_956_20082f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, =0x362
	sub	sp, #8
	ldr	r6, [r3]
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	bne	.L3e0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L332
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__MapActor_TravelTo
.L332:
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	ldr	r2, =0x6666
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xcccc
	mov	r8, r2
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	mov	r10, r3
	str	r3, [r0, #0x30]
	lsl	r2, #14
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r3, r10
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x30]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	strb	r7, [r2]
	mov	r9, r2
	mov	r2, r10
	mov	r3, r8
	str	r2, [r5, #0x30]
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0x34]
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	bl	__Actor_TravelTo
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x18
	mov	r0, #0
	bl	__Func_8010704
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, #3
	mov	r2, r9
	strb	r3, [r2]
	ldr	r3, [r5, #0xc]
	ldr	r0, =0x367
	str	r3, [r5, #0x14]
	bl	__SetFlag
.L3e0:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20082f8

	.section .text.after_8404, "ax", %progbits
