	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009214
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =0x7e
	ldr	r3, =0x8d2
	sub	r3, r2
	add	r0, r3
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm946_128c
	mov	r2, #0xa8
	lsl	r2, #16
	ldr	r1, =0x28a0000
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r3, =0xffe00000
	mov	r0, #8
	str	r3, [r6, #0xc]
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r2, #0xa
	mov	r3, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm946_1296
.Lm946_128c:
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
.Lm946_1296:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009214

