	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200967c
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm946_16ae
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm946_16b8
.Lm946_16ae:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.Lm946_16b8:
	ldr	r0, =0x8c5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm946_16d2
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm946_16dc
.Lm946_16d2:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.Lm946_16dc:
	ldr	r0, =0x8c6
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm946_16f6
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm946_1700
.Lm946_16f6:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.Lm946_1700:
	ldr	r0, =0x8c7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm946_171a
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm946_1724
.Lm946_171a:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.Lm946_1724:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200967c

