	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KolimaForest1_MapInit
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm913_cbe
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0x14
	mov	r2, #0x11
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_913_2008244
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm913_cbe:
	mov	r0, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #9
	bl	OvlFunc_913_20088c0
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lm913_ce8
	ldr	r0, =0x843
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm913_ce8
	bl	OvlFunc_913_2008d3c
.Lm913_ce8:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm913_d24
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm913_d24:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end KolimaForest1_MapInit

