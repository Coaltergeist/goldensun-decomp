	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #0
	ldr	r0, =0x173
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
	mov	r6, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.L886
	bl	__CutsceneStart
	b	.L95a
.L886:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L894
	b	.Lb88
.L894:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.L8d0
	b	.Lb88
.L8a0:
	mov	r2, #0xc1
	lsl	r2, #1
	mov	r3, #2
	add	r2, r10
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r0, #0x80
	mov	r3, #1
	lsl	r0, #2
	mov	r8, r3
	bl	__ClearFlag
	b	.L948
.L8d0:
	bl	__CutsceneStart
	ldr	r0, =0x203
	bl	__SetFlag
	mov	r0, #2
	bl	OvlFunc_971_2008128
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L93e
	ldr	r0, =0x2928
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r7, r0
	b	.L93e
.L8fa:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x201
	mov	r5, #0
	bl	__GetFlag
	cmp	r0, #0
	bne	.L90e
	mov	r5, #1
.L90e:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.L91a
	mov	r5, #1
.L91a:
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L938
	mov	r0, #1
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L938
	add	r6, #1
	cmp	r6, #0x19
	ble	.L93a
	mov	r5, #1
	b	.L93a
.L938:
	mov	r6, #0
.L93a:
	cmp	r5, #0
	bne	.L8a0
.L93e:
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L8fa
.L948:
	cmp	r7, #0
	beq	.L954
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
.L954:
	mov	r0, #5
	bl	__WaitFrames
.L95a:
	mov	r2, r8
	cmp	r2, #0
	beq	.L962
	b	.Lb5c
.L962:
	mov	r1, #0xf9
	lsl	r1, #3
	mov	r0, #0x36
	bl	__galloc_ewram
	ldr	r5, =OvlFunc_971_2008148
	mov	r6, r0
	mov	r0, r5
	bl	__StopTask
	mov	r0, #5
	bl	__Func_80118a8
	mov	r0, #8
	bl	__WaitFrames
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9e8
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Face
	ldr	r0, =0x293b
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0x2d
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xd8
	mov	r2, #0xb8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	b	.Lab6
.L9e8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnim
	bl	OvlFunc_971_20087b0
	cmp	r0, #0
	bge	.Laa2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xc8
	mov	r1, #0xd8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #5
	bl	__Func_80118a8
	mov	r0, #8
	bl	__WaitFrames
	mov	r0, #5
	bl	__Func_80118c0
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x36
	bl	__gfree
	mov	r0, #0
	bl	OvlFunc_971_2008128
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r1, #1
	mov	r0, r5
	bl	__Func_8004358
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	ldr	r0, =0x203
	bl	__ClearFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r10
	mov	r3, #2
	strh	r3, [r2]
	b	.Lb5c
.Laa2:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_WaitMovement
.Lab6:
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb0c
	ldr	r5, =0xbe
	mov	r1, #8
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #9
	bl	__Func_8091fa8
	b	.Lb1e

	.pool_aligned

.Lb0c:
	ldr	r5, =0xbe
	mov	r1, #0xa
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0xb
	bl	__Func_8091fa8
.Lb1e:
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #4
	strb	r2, [r3]
	mov	r0, #1
	mov	r1, #1
	bl	__StartMapBattle
	ldr	r2, =ewram_2002224
	ldr	r3, .Lb64	@ 0x58
	ldr	r1, .Lb68	@ 0x45
	strh	r3, [r2, #2]
	ldr	r3, .Lb6c	@ 0x43
	strh	r1, [r2]
	strh	r1, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r4, =0x7c7
	ldr	r2, =ewram_2018000
	mov	r1, #0
	mov	r0, r6
.Lb48:
	ldrb	r3, [r0]
	add	r1, #1
	strb	r3, [r2]
	add	r0, #1
	add	r2, #1
	cmp	r1, r4
	bls	.Lb48
	mov	r0, #0x36
	bl	__gfree
.Lb5c:
	bl	__CutsceneEnd
	b	.Lb88

	.align	2, 0
.Lb64:
	.word	0x58
.Lb68:
	.word	0x45
.Lb6c:
	.word	0x43
	.pool

.Lb88:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008860
