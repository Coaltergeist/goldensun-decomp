	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a5c0
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #2
	bne	.Lm932_25ec
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_25ec
	mov	r1, #0xb3
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm932_25ec:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_262c
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #5
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r3, #0x2b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	add	r5, #0x23
	mov	r0, #0x2d
	mov	r1, #0x29
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
.Lm932_262c:
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2642
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
.Lm932_2642:
	ldr	r0, =0x326
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2676
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
	b	.Lm932_269e
.Lm932_2676:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
.Lm932_269e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a5c0

