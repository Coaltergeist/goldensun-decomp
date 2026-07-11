	.include "macros.inc"

.thumb_func_start OvlFunc_911_2008284
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L29c
	ldr	r0, =.L3590
	b	.L29e
.L29c:
	ldr	r0, =.L33b0
.L29e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008284

.thumb_func_start OvlFunc_911_20082b4
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20082b4

.thumb_func_start OvlFunc_911_2008304
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	mov	r6, #0
	mov	r5, #0
	cmp	r3, #4
	bhi	.L39a
	ldr	r2, =.L330
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L330:
	.word	.L344
	.word	.L34a
	.word	.L350
	.word	.L356
	.word	.L35c
.L344:
	mov	r6, #0x47
	mov	r5, #9
	b	.L39a
.L34a:
	mov	r6, #0x49
	mov	r5, #0x11
	b	.L39a
.L350:
	mov	r6, #0x50
	mov	r5, #0x15
	b	.L39a
.L356:
	mov	r6, #0x54
	mov	r5, #0xc
	b	.L39a
.L35c:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_809228c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	b	.L3b6
.L39a:
	ldr	r0, =.L2e48
	mov	r1, r6
	mov	r2, r5
	bl	__Func_8010560
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_911_20082b4
	bl	__CutsceneEnd
.L3b6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008304

.thumb_func_start OvlFunc_911_20083c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r2, #0xf6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x1786
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r2, #0xea
	mov	r3, #1
	lsl	r0, #16
	mov	r1, #0
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x8b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x90
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #8
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xe0
	mov	r2, #0xc5
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0xb0
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xea
	mov	r2, #0xc8
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc6
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r5, #5
	mov	r6, #4
	mov	r1, #0
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r3, #9
	mov	r1, #4
	mov	r2, #0x48
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #9
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #8
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x80
	lsl	r0, #9
	mov	r7, #0x94
	mov	r6, #0
	mov	r8, r0
	lsl	r7, #16
.L564:
	mov	r3, #0x81
	mov	r0, #0xde
	mov	r1, r7
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L5d4
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	mov	r2, r5
	add	r3, #0x28
	add	r2, #0x64
	strh	r3, [r2]
	mov	r3, #3
	and	r3, r6
	lsl	r3, #16
	add	r3, r8
	asr	r2, r3, #1
	mov	r3, r8
	str	r3, [r5, #0x2c]
	mov	r3, #1
	and	r3, r6
	str	r2, [r5, #0x24]
	cmp	r3, #0
	beq	.L5c4
	neg	r3, r2
	str	r3, [r5, #0x24]
.L5c4:
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, r5
	ldr	r1, =gScript_911__0200ae20
	bl	__Actor_SetScript
.L5d4:
	mov	r0, #0x80
	lsl	r0, #11
	add	r6, #1
	add	r7, r0
	cmp	r6, #9
	bls	.L564
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
	mov	r3, #7
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	bl	__Func_8010704
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r1, #0x80
	ldr	r2, =gScript_884__0200ae34
	lsl	r1, #9
	mov	r0, #8
	bl	__Func_8092a1c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0
	bl	__MapActor_Emote
	ldr	r0, =0x847
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20083c8

.thumb_func_start OvlFunc_911_2008694
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	sub	sp, #8
	cmp	r2, r3
	bne	.L6b0
	bl	OvlFunc_911_200a910
	b	.L7d4
.L6b0:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.L6c6
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	b	.L7d4
.L6c6:
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r5, =gScript_911__0200add8
	mov	r0, #0x17
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x19
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.L770
	mov	r5, #8
.L724:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r5, #1
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	cmp	r5, #0x10
	bls	.L724
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #8
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L770:
	ldr	r0, =0x843
	bl	__GetFlag
	cmp	r0, #0
	bne	.L78e
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L78e
	bl	OvlFunc_911_20088ec
.L78e:
	ldr	r0, =0x843
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7d4
	mov	r0, #1
	bl	__DeleteFieldActor
	mov	r0, #2
	bl	__DeleteFieldActor
	mov	r0, #3
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__DeleteFieldActor
	mov	r0, #0x12
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r0, #0x14
	bl	__DeleteFieldActor
	mov	r0, #0x15
	bl	__DeleteFieldActor
	mov	r0, #0x16
	bl	__DeleteFieldActor
	ldr	r0, =.L32d8
	bl	__LoadFieldActors
.L7d4:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008694

.thumb_func_start OvlFunc_911_2008800
	push	{lr}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L82a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L824
	str	r2, [r0, #0xc]
	b	.L82a
.L824:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L82a:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L852
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L84c
	str	r1, [r0, #0xc]
	b	.L852
.L84c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L852:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L87a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L874
	str	r2, [r0, #0xc]
	b	.L87a
.L874:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L87a:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L8a2
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L89c
	str	r1, [r0, #0xc]
	b	.L8a2
.L89c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L8a2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008800

