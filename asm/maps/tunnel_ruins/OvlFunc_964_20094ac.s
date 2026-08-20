	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_20094ac
	push	{lr}
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm964_14dc
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
	b	.Lm964_14f6
.Lm964_14dc:
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
.Lm964_14f6:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20094ac

