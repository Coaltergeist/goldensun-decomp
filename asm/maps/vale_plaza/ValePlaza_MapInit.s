	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValePlaza_MapInit
	push	{r5, lr}
	ldr	r0, =0x90b
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm884_958:
	ldr	r0, =0x90c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_96c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm884_96c:
	ldr	r0, =0x90d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_980
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm884_980:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x62
	beq	.Lm884_9a2
	cmp	r3, #0x62
	bgt	.Lm884_99c
	cmp	r3, #0x61
	bne	.Lm884_99a
	b	.Lm884_b4a
.Lm884_99a:
	b	.Lm884_9b6
.Lm884_99c:
	cmp	r3, #0x63
	beq	.Lm884_9b0
	b	.Lm884_9b6
.Lm884_9a2:
	mov	r0, #0x20
	bl	__SetFlag
	mov	r0, #0x32
	bl	__Func_8091e9c
	b	.Lm884_b80
.Lm884_9b0:
	bl	OvlFunc_884_200a5b0
	b	.Lm884_b80
.Lm884_9b6:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #9
	str	r5, [r0, #0x1c]
	mov	r0, #9
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_a0e
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x61
	mov	r1, #2
	mov	r2, #0x50
	mov	r3, #5
	bl	__CopyMapTiles
	mov	r3, #3
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x35
	mov	r2, #0x2a
	mov	r3, #0x36
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm884_b80
.Lm884_a0e:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_a62
	bl	__StartRain
	bl	__StartThunder
	mov	r3, #0x12
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_aaa
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_884__0200ac00
	mov	r0, #0x13
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.Lm884_aaa
.Lm884_a62:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_aaa
	mov	r1, #0xb4
	mov	r2, #0x8e
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #2
	mov	r2, #0x50
	mov	r3, #5
	bl	__CopyMapTiles
	mov	r3, #3
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x35
	mov	r2, #0x2a
	mov	r3, #0x36
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm884_aaa:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.Lm884_ac0
	bl	OvlFunc_884_20097c8
	b	.Lm884_b80
.Lm884_ac0:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_af8
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, =0x4ccc
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, =0x9999
	mov	r1, #5
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	b	.Lm884_b1a
.Lm884_af8:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_b1a
	mov	r2, #0xf9
	ldr	r1, =0x14b0000
	mov	r0, #0x15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm884_b1a:
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_b3a
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm884_b3a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.Lm884_b50
.Lm884_b4a:
	bl	OvlFunc_884_20095b4
	b	.Lm884_b80
.Lm884_b50:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_b6a
	ldr	r0, =0x842
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_b6a
	bl	OvlFunc_884_2009084
	b	.Lm884_b80
.Lm884_b6a:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_b80
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
.Lm884_b80:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ValePlaza_MapInit

