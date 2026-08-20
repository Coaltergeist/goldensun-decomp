	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a1ac
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r0, [r0, #0x50]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	and	r2, r3
	ldr	r3, =0x6666
	orr	r2, r4
	strb	r2, [r1, #9]
	str	r3, [r6, #0x34]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	str	r3, [r6, #0x30]
	mov	r0, r6
	ldr	r3, [r6, #0x10]
	lsl	r2, #14
	bl	__Actor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a1ac

