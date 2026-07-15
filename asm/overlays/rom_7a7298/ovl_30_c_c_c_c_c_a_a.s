	.include "macros.inc"

.thumb_func_start OvlFunc_921_20086c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.L6ce:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6de
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L6de:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L6ce
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #0x32
	lsl	r3, #16
	asr	r5, r3, #16
	cmp	r5, #6
	bne	.L6fe
	mov	r0, #0xbc
	bl	__PlaySound
	b	.L704
.L6fe:
	mov	r0, #0x9e
	bl	__PlaySound
.L704:
	ldr	r2, =.L31a8
	lsl	r3, r5, #2
	sub	r0, r3, #4
	sub	r3, #2
	ldrsh	r1, [r2, r0]
	ldrsh	r2, [r2, r3]
	ldr	r3, =.L3190
	ldr	r0, [r3, r0]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	cmp	r5, #6
	bne	.L760
	ldr	r2, =0x1999
	mov	r0, #0
	ldr	r1, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	b	.L778
.L760:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	neg	r2, r2
	bl	__Func_8092208
.L778:
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, r5
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20086c0

.thumb_func_start OvlFunc_921_20087a4
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.L804
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L7d0
	mov	r0, #0xa
	mov	r1, #0xc
	bl	__Func_80b0278
	b	.L86c
.L7d0:
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x164b
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	b	.L86c
.L804:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L86c
	bl	__CutsceneStart
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0xf6
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_921__0200a5ec
	mov	r0, #0xc
	bl	__MapActor_RunScript
	ldr	r0, =0x153e
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0x9a
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__CutsceneEnd
.L86c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20087a4

.thumb_func_start OvlFunc_921_200888c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.L8ec
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L8b8
	mov	r0, #0xb
	mov	r1, #0xd
	bl	__Func_80b0278
	b	.L954
.L8b8:
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x164d
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	b	.L954
.L8ec:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L954
	bl	__CutsceneStart
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0xf6
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_921__0200a5ec
	mov	r0, #0xd
	bl	__MapActor_RunScript
	ldr	r0, =0x1543
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0x9a
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__CutsceneEnd
.L954:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200888c

.thumb_func_start OvlFunc_921_2008974
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9ce
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L9a0
	mov	r0, #0xc
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.La1e
.L9a0:
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_809280c
	ldr	r0, =0x164f
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	b	.La1e
.L9ce:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L9fa
	bl	__CutsceneStart
	ldr	r0, =0x1546
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_80b0278
	bl	__CutsceneEnd
	b	.La1e
.L9fa:
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_809280c
	ldr	r0, =0x1547
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
.La1e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008974

	.section .text.after_8a3c, "ax", %progbits

	.section .text.after_8abc, "ax", %progbits

.thumb_func_start OvlFunc_921_2008b70
	push	{r5, r6, lr}
	ldr	r6, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x32
	sub	sp, #8
	cmp	r2, r3
	bne	.Lc14
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	mov	r5, r0
	str	r2, [r3]
	mov	r0, #0xa
	mov	r1, #9
	bl	__MapActor_SetAnim
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbbc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x201
	bl	__ClearFlag
.Lbbc:
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	mov	r1, #0xc8
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_921_2009794
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_921_20098c4
	bl	__StartTask
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbf2
	bl	OvlFunc_921_2009960
.Lbf2:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbfe
	b	.Lf78
.Lbfe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.Lc0e
	b	.Lf78
.Lc0e:
	bl	OvlFunc_921_20099bc
	b	.Lf78
.Lc14:
	ldr	r3, =0x33
	cmp	r2, r3
	beq	.Lc1c
	b	.Lf78
.Lc1c:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r5, [r3, r1]
	cmp	r5, #1
	beq	.Lc38
	b	.Ld84
.Lc38:
	mov	r1, #0xf
	mov	r0, #0x15
	bl	__Func_8092950
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lca6
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #9
	mov	r1, #0x7d
	mov	r3, #0x45
	mov	r0, #3
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lf78
.Lca6:
	ldr	r0, =0x82c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld14
	ldr	r0, =0x82a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld14
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xae
	mov	r2, #0xa4
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xa8
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld0e
	b	.Lf78
.Ld0e:
	bl	OvlFunc_921_2008f90
	b	.Lf78
.Ld14:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x7d
	mov	r2, #9
	mov	r3, #0x45
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x82c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld7a
	mov	r1, #0x95
	mov	r2, #0xe8
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x66
	strh	r5, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #9
	bl	__MapActor_SetBehavior
	b	.Lf78
.Ld7a:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetBehavior
	b	.Lf78
.Ld84:
	cmp	r5, #2
	bne	.Ldaa
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld94
	b	.Lf78
.Ld94:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x66
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	b	.Lf78
.Ldaa:
	cmp	r5, #4
	bne	.Le48
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le1a
	mov	r1, #0xb6
	ldr	r2, =0x2420000
	mov	r0, #0xc
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r0]
	mov	r5, #3
	mov	r3, #0x58
	mov	r0, #6
	mov	r1, #0x7d
	mov	r2, #0x16
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0xf6
	ldr	r2, =0x2420000
	mov	r0, #0xd
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092b08
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #0x7d
	mov	r0, #9
	mov	r2, #0x1c
	mov	r3, #0x58
	b	.Le9e
.Le1a:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #5
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	b	.Lee6
.Le48:
	cmp	r5, #3
	bne	.Lf34
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lea8
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xf
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	mov	r1, #0xcc
	mov	r2, #0x84
	strb	r3, [r0]
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r0, #6]
	mov	r1, #0x7d
	mov	r0, #0xc
	mov	r2, #0x1a
	mov	r3, #0x46
.Le9e:
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lf78
.Lea8:
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xe
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_8092b08
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xf
.Lee6:
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lf78

	.pool_aligned

.Lf34:
	cmp	r5, #7
	bne	.Lf78
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf78
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf6a
	mov	r2, #0xa1
	mov	r0, #0x14
	ldr	r1, =0x28a0000
	lsl	r2, #16
	bl	__MapActor_SetPos
	bl	OvlFunc_921_20099e8
	b	.Lf78
.Lf6a:
	mov	r1, #0xa1
	mov	r2, #0xa6
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lf78:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_921_2008b70

.thumb_func_start OvlFunc_921_2008f90
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xb6
	mov	r2, #0x96
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x8d
	mov	r1, #1
	mov	r2, #0xdd
	lsl	r2, #16
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa4
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionIn
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0x8e
	mov	r2, #0xdd
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1038
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L1038:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L104c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L104c:
	mov	r0, #1
	mov	r1, #0x96
	mov	r2, #0xea
	bl	__Func_809218c
	mov	r2, #0xea
	mov	r0, #2
	mov	r1, #0x86
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r5, =gScript_921__0200a74c
	mov	r0, #0
	mov	r2, r5
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	mov	r2, r5
	mov	r0, #1
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	mov	r2, r5
	mov	r0, #2
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	bl	__Func_8093530
	ldr	r5, =gScript_921__0200a5ec
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	ldr	r0, =0x155c
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	bl	OvlFunc_921_20096c8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31c0
	bl	__Func_8010560
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31d6
	bl	__Func_8010560
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #3
	bl	__MapActor_SetSpeed
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a670
	mov	r0, #3
	bl	__MapActor_SetBehavior
	b	.L128a

	.pool_aligned

.L1284:
	mov	r0, #1
	bl	__WaitFrames
.L128a:
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1284
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xc6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x207e9f
	bl	__Func_8091200
	mov	r0, #0xa
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0xc6
	mov	r1, #0xca
	mov	r0, #3
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #3
	bl	__MapActor_SetSpeed
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a6e0
	mov	r0, #3
	bl	__MapActor_SetBehavior
	b	.L13e6
.L13e0:
	mov	r0, #1
	bl	__WaitFrames
.L13e6:
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L13e0
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #2
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0x84
	mov	r0, #0
	mov	r2, #0xce
	bl	__MapActor_TravelTo
	mov	r0, #1
	mov	r1, #0x88
	mov	r2, #0xdd
	bl	__MapActor_TravelTo
	mov	r1, #0x7a
	mov	r2, #0xee
	mov	r0, #2
	bl	__MapActor_TravelTo
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_921__0200a760
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r0, =0x82b
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008f90

	.section .text.after_954c, "ax", %progbits

.thumb_func_start OvlFunc_921_20095b4
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	lsl	r0, #10
	sub	sp, #0xc
	bl	__sin
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, =.L31f0
	ldr	r3, [r3]
	add	r3, r0
	str	r3, [r6, #8]
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.L15f4
	mov	r3, r1
	add	r3, #0x7f
.L15f4:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r5]
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L16a4
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	__Random
	mov	r6, r0
	bl	__Random
	mov	r1, r0
	lsl	r0, r6, #1
	add	r0, r6
	mov	r2, r5
	lsl	r0, #1
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L16a4
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, .L1688	@ 0
	add	r2, #0x32
	mov	r0, r5
	mov	r1, #9
	strb	r3, [r2]
	bl	__Func_80929d8
	ldr	r1, =gScript_921__0200a64c
	mov	r0, r5
	bl	__Actor_SetScript
	b	.L16a4

	.align	2, 0
.L1688:
	.word	0
	.pool

.L16a4:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20095b4
