	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a310
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2336
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm932_23ae
.Lm932_2336:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_235a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.Lm932_235a
	bl	OvlFunc_932_200ae1c
	b	.Lm932_23ae
.Lm932_235a:
	mov	r3, #0x25
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x2d
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_23ae
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xee
	mov	r2, #0xd1
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r2, #17
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_932_200abb0
.Lm932_23ae:
	ldr	r0, =0x323
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_23e2
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
	b	.Lm932_240a
.Lm932_23e2:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm932_240a:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a310

