	.include "macros.inc"

.thumb_func_start OvlFunc_936_200b1b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r2, =.L3d84
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_936_200b184
	mov	r7, r0
	cmp	r7, #0
	beq	.L3288
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	cmp	r0, #0
	bgt	.L3288
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__WaitFrames
	mov	r0, #0xb9
	bl	__PlaySound
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Actor_TravelTo
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	bl	__Func_809202c
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Actor_SetAnim
	bl	OvlFunc_936_200b2a4
.L3288:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b1b8

.thumb_func_start OvlFunc_936_200b2a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r10, r0
	ldr	r0, =0x302
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L32cc
	b	.L351e
.L32cc:
	ldr	r3, [r6, #8]
	asr	r3, #19
	cmp	r3, #0x1d
	ble	.L32d6
	b	.L351e
.L32d6:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	mov	r3, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	str	r5, [sp]
	str	r3, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L32f8:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x46
	bne	.L3318
	ldr	r0, =0x302
	bl	__SetFlag
.L3318:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L32f8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	mov	r0, #0x10
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #0x96
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r1, =gScript_936__0200c268
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r6, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #7
	mov	r1, #0xb
	mov	r2, #7
	mov	r3, #0x2a
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0xc
	mov	r2, #0x47
	mov	r3, #0x2b
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	mov	r5, #0x2c
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_936_20095b4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__CutsceneEnd
.L351e:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.L352a
	b	.L36ea
.L352a:
	mov	r2, r10
	ldr	r3, [r2, #8]
	asr	r3, #19
	cmp	r3, #0x57
	ble	.L3536
	b	.L36ea
.L3536:
	bl	__CutsceneStart
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L3540:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x46
	bne	.L3574
	ldr	r0, =0x303
	bl	__SetFlag
	b	.L3574

	.pool_aligned

.L3574:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L3540
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	mov	r0, #0x2d
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r5, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x43
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x44
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x26
	mov	r1, #0xe
	mov	r2, #0x26
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x66
	mov	r1, #0xe
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x25
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	mov	r0, #0x25
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_936_20095b4
	bl	__CutsceneEnd
.L36ea:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b2a4

	.section .text.after_b6f8, "ax", %progbits

.thumb_func_start OvlFunc_936_200b768
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	ldr	r2, =0xfffffe83
	add	r3, r2
	mov	r6, r0
	cmp	r3, #0xc
	bhi	.L37ae
	mov	r2, #0x12
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x309
	cmp	r3, r2
	ble	.L37ae
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	b	.L37f4
.L37ae:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.L37f4
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xf5
	bgt	.L37f4
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L37f4
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.L37ea
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__PlaySound
	ldr	r0, =0x202
	bl	__SetFlag
.L37ea:
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	OvlFunc_936_200b864
.L37f4:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L383c
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	ldr	r2, =0x2c5
	cmp	r3, r2
	bgt	.L383c
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L383c
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3832
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__PlaySound
	ldr	r0, =0x203
	bl	__SetFlag
.L3832:
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	bl	OvlFunc_936_200b864
.L383c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b768

.thumb_func_start OvlFunc_936_200b864
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r5, r0
	bl	__Random
	mov	r2, r0
	ldr	r3, =0xfff80000
	lsl	r2, #3
	lsr	r2, #16
	add	r5, r3
	lsl	r2, #16
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r6
	add	r2, r3
	mov	r1, r5
	mov	r0, #0xde
	mov	r3, r8
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L38fa
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_80929d8
	mov	r1, #0
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	sub	r0, #1
	lsl	r0, #16
	str	r0, [r5, #0x24]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	mov	r2, r5
	str	r3, [r5, #0x28]
	add	r2, #0x64
	mov	r3, #0x14
	strh	r3, [r2]
	sub	r2, #3
	mov	r3, #1
	mov	r0, r5
	mov	r1, #1
	strb	r3, [r2]
	bl	__Actor_SetAnim
	ldr	r1, =gScript_936__0200d120
	mov	r0, r5
	bl	__Actor_SetScript
.L38fa:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b864
