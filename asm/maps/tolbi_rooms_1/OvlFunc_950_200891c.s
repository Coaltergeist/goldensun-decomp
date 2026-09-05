	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_200891c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm950_944
	mov	r0, r5
	bl	__UI_Sanctum
	b	.Lm950_984
.Lm950_944:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_95c
	ldr	r0, =0x23bf
	b	.Lm950_968

	.pool_aligned

.Lm950_95c:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_976
	ldr	r0, =0x2231
.Lm950_968:
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm950_984
.Lm950_976:
	ldr	r0, =0x1feb
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm950_984:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200891c

