	.include "macros.inc"

.thumb_func_start XianRooms_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =gState
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	beq	.Lm929_5ba
	cmp	r3, #7
	bne	.Lm929_5c4
.Lm929_5ba:
	mov	r0, #0xf8
	lsl	r0, #16
	ldr	r2, =0x1a10000
	mov	r1, #0
	b	.Lm929_5e2
.Lm929_5c4:
	cmp	r3, #6
	bne	.Lm929_5ea
	mov	r5, #0x8e
	lsl	r5, #18
	mov	r0, #0xe6
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0x14
	lsl	r0, #17
	bl	OvlFunc_common0_70
	mov	r0, #0xf2
	lsl	r0, #17
	mov	r1, #0
	mov	r2, r5
.Lm929_5e2:
	mov	r3, #0x14
	bl	OvlFunc_common0_70
	b	.Lm929_5fc
.Lm929_5ea:
	cmp	r3, #8
	bne	.Lm929_5fc
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
.Lm929_5fc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end XianRooms_MapInit

