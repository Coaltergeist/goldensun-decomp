	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009458
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1488
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14a2
.L1488:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14a2:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009458

.thumb_func_start OvlFunc_964_20094ac
	push	{lr}
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L14dc
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14f6
.L14dc:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14f6:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20094ac

