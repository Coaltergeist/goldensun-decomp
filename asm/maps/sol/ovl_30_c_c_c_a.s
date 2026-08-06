	.include "macros.inc"

.thumb_func_start OvlFunc_895_20087d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r2, =.Lm895_265c
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
	bl	OvlFunc_895_200879c
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm895_8d4
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
	bgt	.Lm895_8d4
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
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	mov	r1, #1
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r0, r8
	bl	__Actor_SetAnim
	ldr	r3, =gState
	mov	r4, #0xe1
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xb
	blt	.Lm895_8d4
	cmp	r3, #0xd
	ble	.Lm895_8b2
	cmp	r3, #0x10
	bgt	.Lm895_8d4
	b	.Lm895_8bc
.Lm895_8b2:
	bl	OvlFunc_895_200856c
	bl	OvlFunc_895_20085ac
	b	.Lm895_8d4
.Lm895_8bc:
	bl	OvlFunc_895_20085ec
	bl	OvlFunc_895_2008634
	bl	OvlFunc_895_200867c
	bl	OvlFunc_895_20086c4
	bl	OvlFunc_895_200870c
	bl	OvlFunc_895_2008754
.Lm895_8d4:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20087d0

.thumb_func_start Sol_MapInit
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_90e
	bl	OvlFunc_895_200892c
	b	.Lm895_918
.Lm895_90e:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_918
	bl	OvlFunc_895_2008a24
.Lm895_918:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Sol_MapInit

.thumb_func_start OvlFunc_895_200892c
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_960
	ldr	r3, =.Lm895_269c
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_895_2009ac8
	lsl	r1, #4
	bl	__StartTask
.Lm895_960:
	ldr	r0, =0x879
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_9b2
	mov	r5, #6
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.Lm895_9b2:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_a02
	mov	r1, #0xf0
	mov	r2, #0xe8
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r3, #6
	mov	r5, #0xe
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm895_a02:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200892c

.thumb_func_start OvlFunc_895_2008a24
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x81
	add	r3, r0
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x814
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_a5c
	mov	r0, #0x8d
	bl	__Func_8091ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	bl	__StartEarthquake
.Lm895_a5c:
	ldr	r1, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #1
	cmp	r3, #0xf
	bls	.Lm895_a70
	b	.Lm895_cda
.Lm895_a70:
	ldr	r2, =.Lm895_a78
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm895_a78:
	.word	.Lm895_ab8
	.word	.Lm895_ab8
	.word	.Lm895_b10
	.word	.Lm895_cda
	.word	.Lm895_cda
	.word	.Lm895_cda
	.word	.Lm895_cda
	.word	.Lm895_b1e
	.word	.Lm895_cda
	.word	.Lm895_cda
	.word	.Lm895_b42
	.word	.Lm895_b42
	.word	.Lm895_b42
	.word	.Lm895_c30
	.word	.Lm895_c30
	.word	.Lm895_c30
.Lm895_ab8:
	ldr	r0, =0x81a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm895_ac4
	b	.Lm895_cda
.Lm895_ac4:
	mov	r5, #1
	mov	r0, #1
	mov	r1, #0x6d
	mov	r2, #4
	mov	r3, #0x51
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x46
	mov	r2, #0x1e
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__Func_800fe9c
	b	.Lm895_cda
.Lm895_b10:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	b	.Lm895_cda
.Lm895_b1e:
	mov	r0, #0x90
	ldr	r2, =0x10
	lsl	r0, #2
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r3, =0x242
	add	r2, r1, r3
	mov	r3, #8
	strh	r3, [r2]
	ldr	r0, =0x802
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_b3c
	b	.Lm895_cda
.Lm895_b3c:
	bl	OvlFunc_895_2008d1c
	b	.Lm895_cda
.Lm895_b42:
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
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x804
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm895_bd4
	bl	OvlFunc_895_2008f8c
.Lm895_bd4:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_bee
	mov	r1, #0xbb
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm895_c06
.Lm895_bee:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_c06
	mov	r1, #0xbf
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm895_c06:
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_c14
	mov	r1, #0xe3
	b	.Lm895_c22
.Lm895_c14:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_cda
	mov	r1, #0xe7
.Lm895_c22:
	mov	r2, #0x88
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm895_cda
.Lm895_c30:
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
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x825
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm895_c86
	bl	OvlFunc_895_200961c
.Lm895_c86:
	mov	r0, #1
	bl	OvlFunc_895_20097c0
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x821
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_cda
	mov	r5, #1
	mov	r0, #0
	mov	r1, #0x47
	mov	r2, #0x64
	mov	r3, #0x47
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #0x78
	mov	r3, #0x1e
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x78
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	bl	__Func_800fe9c
.Lm895_cda:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008a24

.thumb_func_start OvlFunc_895_2008d1c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0x88
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_d82
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm895_d82:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_d96
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__MapActor_SetPos
.Lm895_d96:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_daa
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm895_daa:
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #5
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0x4ccc
	mov	r0, #1
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #5
	mov	r1, #0x10
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r2, #0x20
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0xfd3
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0x94
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_ec6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm895_ec6:
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_ee6
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm895_ee6:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_f06
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__MapActor_TravelTo
.Lm895_f06:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	ldr	r0, =0x802
	bl	__SetFlag
	ldr	r3, [r5]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008d1c

.thumb_func_start OvlFunc_895_2008f8c
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_fae
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm895_fae:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_fc2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__MapActor_SetPos
.Lm895_fc2:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_fd6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm895_fd6:
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #5
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0x4ccc
	mov	r0, #1
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #5
	mov	r1, #0x10
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x20
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x96
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	ldr	r0, =0x6310000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc8
	ldr	r0, =0x6550000
	neg	r1, r1
	lsl	r2, #15
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r2, #15
	mov	r3, #1
	ldr	r0, =0x6b60000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xdb
	mov	r1, #1
	mov	r2, #0x96
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #17
	ldr	r0, =0x6840000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x14
	mov	r0, #1
	bl	__MapActor_Emote
	ldr	r0, =0xfd6
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	b	.Lm895_1400

	.pool_aligned

.Lm895_1400:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm895_1442
	ldr	r0, =_MSG_fe0
	bl	__MessageID
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	b	.Lm895_14d8
.Lm895_1442:
	ldr	r0, =0xfe1
	bl	__MessageID
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
.Lm895_14d8:
	ldr	r2, =0x4ccc
	mov	r0, #8
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x30
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_1572
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm895_1572:
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_1592
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm895_1592:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_15b2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__MapActor_TravelTo
.Lm895_15b2:
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #5
	bl	__MapActor_SetAnim
	ldr	r0, =0x804
	bl	__SetFlag
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008f8c

.thumb_func_start OvlFunc_895_200961c
	push	{lr}
	bl	__CutsceneStart
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_1652
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm895_1652:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #8
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	neg	r2, r2
	mov	r1, #0x18
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xd1
	mov	r1, #1
	mov	r2, #0x83
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xeb
	mov	r1, #1
	mov	r2, #0x83
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x89
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	ldr	r0, =0x6e90000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #8
	bl	__Func_8092adc
	ldr	r0, =0x103a
	bl	__MessageID
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_1776
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__MapActor_TravelTo
.Lm895_1776:
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x825
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200961c

.thumb_func_start OvlFunc_895_20097c0
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r5, #0x20
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	mov	r6, r0
	mov	r7, #0x64
	mov	r0, #0x7a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x78
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1862
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1890
	mov	r1, #0xc7
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1890
.Lm895_1862:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1890
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1890
	mov	r1, #0xcb
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1890:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_18c2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_18f2
	mov	r1, #0xcf
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_18f2
.Lm895_18c2:
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_18f2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_18f2
	mov	r1, #0xd3
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_18f2:
	ldr	r0, =0x315
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1924
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1956
	mov	r1, #0xd7
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1956
.Lm895_1924:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1956
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1956
	mov	r1, #0xdb
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1956:
	ldr	r0, =0x317
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1988
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_19b8
	mov	r1, #0xdf
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_19b8
.Lm895_1988:
	ldr	r0, =0x316
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_19b8
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_19b8
	mov	r1, #0xe3
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_19b8:
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_19ea
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a1c
	mov	r1, #0xe7
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1a1c
.Lm895_19ea:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a1c
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a1c
	mov	r1, #0xeb
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1a1c:
	ldr	r0, =0x31b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a4e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a7e
	mov	r1, #0xef
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1a7e
.Lm895_1a4e:
	ldr	r0, =0x31a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a7e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a7e
	mov	r1, #0xf3
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1a7e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20097c0

