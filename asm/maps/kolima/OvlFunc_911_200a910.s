	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_200a910
	push	{lr}
	ldr	r0, =0x845
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm911_2948
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #9
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm911_2952
.Lm911_2948:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm911_2952:
	ldr	r0, =0x847
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm911_298e
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__CopyMapTiles
	mov	r3, #8
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	mov	r3, #7
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm911_298e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a910

