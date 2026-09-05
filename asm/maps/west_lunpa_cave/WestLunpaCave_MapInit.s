	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start WestLunpaCave_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	mov	r5, #0x81
	lsl	r2, #1
	lsl	r5, #2
	str	r5, [r3, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.Lm941_1ab0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =0xf333
	str	r3, [r0, #0x1c]
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm941_1a6e
	bl	OvlFunc_941_2008210
.Lm941_1a6e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm941_1a7c
	bl	OvlFunc_941_2008384
.Lm941_1a7c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm941_1a8c
	bl	OvlFunc_941_20080d4
.Lm941_1a8c:
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm941_1a9e
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
.Lm941_1a9e:
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm941_1ab0
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
.Lm941_1ab0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end WestLunpaCave_MapInit

