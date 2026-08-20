	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a490
	push	{lr}
	ldr	r0, =0x907
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_24b6
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm932_2506
.Lm932_24b6:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_24d4
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.Lm932_24d4
	bl	OvlFunc_932_200ae84
.Lm932_24d4:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_2506
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xbb
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r1, #12
	lsl	r2, #17
	lsl	r3, #8
	bl	OvlFunc_932_200abb0
.Lm932_2506:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2544
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x19
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x17
	mov	r1, #0xd
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.Lm932_2544:
	ldr	r0, =0x325
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2578
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
	b	.Lm932_25a0
.Lm932_2578:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
.Lm932_25a0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a490

