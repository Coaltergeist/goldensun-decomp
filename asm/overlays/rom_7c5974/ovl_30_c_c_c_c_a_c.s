	.include "macros.inc"

.thumb_func_start OvlFunc_940_20083dc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	ldr	r5, =gState
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	cmp	r6, #0xa
	bne	.L412
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r1, #0xe2
	ldr	r2, =0x69
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe3
	lsl	r2, #1
	add	r3, r5, r2
	strh	r6, [r3]
.L412:
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_940_20083dc

