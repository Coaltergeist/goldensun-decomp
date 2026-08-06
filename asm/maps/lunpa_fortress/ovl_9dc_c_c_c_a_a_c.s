	.include "macros.inc"

.thumb_func_start LunpaFortress_MapInit
	push	{r5, r6, r7, lr}
	ldr	r5, =.Lm959_5fa4
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	ldr	r7, =gState
	mov	r1, #0xe0
	str	r3, [r5]
	lsl	r1, #1
	add	r5, r7, r1
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0xa0
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.Lm959_4dd2
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_80108c4
	bl	OvlFunc_959_200cf60
	ldrh	r1, [r5]
.Lm959_4dd2:
	lsl	r3, r1, #16
	ldr	r2, =0xa1
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm959_4de2
	bl	OvlFunc_959_200d0e4
	ldrh	r1, [r5]
.Lm959_4de2:
	lsl	r3, r1, #16
	ldr	r2, =0xa2
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm959_4df2
	bl	OvlFunc_959_200d324
	ldrh	r1, [r5]
.Lm959_4df2:
	lsl	r3, r1, #16
	ldr	r2, =0xa3
	asr	r3, #16
	cmp	r3, r2
	beq	.Lm959_4dfe
	b	.Lm959_4f32
.Lm959_4dfe:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	OvlFunc_959_200d520
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_4e42
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_4e42:
	mov	r3, r5
	add	r3, #0x23
	mov	r6, #2
	strb	r6, [r3]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_4e5c
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_4e5c:
	mov	r3, r5
	add	r3, #0x23
	strb	r6, [r3]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_4e74
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_4e74:
	mov	r3, r5
	add	r3, #0x23
	mov	r0, #0xe0
	strb	r6, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #4
	bne	.Lm959_4ea0
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_80108c4
	bl	OvlFunc_959_200b054
	ldrh	r2, [r5]
.Lm959_4ea0:
	lsl	r3, r2, #16
	mov	r2, #0xc0
	lsl	r2, #10
	cmp	r3, r2
	bne	.Lm959_4f14
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_80108c4
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_4f14
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xd8
	mov	r2, #0xac
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0x90
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r1, #17
	mov	r0, #0x11
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_4f14:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_4f26
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_4f26:
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	ldr	r3, =0xcccc
	str	r3, [r5, #0x18]
.Lm959_4f32:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end LunpaFortress_MapInit

.thumb_func_start OvlFunc_959_200cf60
	push	{lr}
	sub	sp, #8
	bl	OvlFunc_959_200d470
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #2
	cmp	r3, #0x11
	bhi	.Lm959_5076
	ldr	r2, =.Lm959_4f84
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm959_4f84:
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_4ffa
	.word	.Lm959_505c
	.word	.Lm959_505c
	.word	.Lm959_505c
	.word	.Lm959_500c
	.word	.Lm959_500c
	.word	.Lm959_500c
	.word	.Lm959_4ffa
.Lm959_4fcc:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009718
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200975c
	bl	__StartTask
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_20097bc
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_5052
.Lm959_4ffa:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	b	.Lm959_5054
.Lm959_500c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009528
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_20099e8
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x6e
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #9
	mov	r2, #0xa
	mov	r3, #8
	bl	__Func_80105d4
.Lm959_5052:
	mov	r0, #0xe0
.Lm959_5054:
	lsl	r0, #4
	bl	__Func_80108c4
	b	.Lm959_508c
.Lm959_505c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =OvlFunc_959_200969c
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_508c
.Lm959_5076:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.Lm959_508c:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cf60

.thumb_func_start OvlFunc_959_200d0e4
	push	{r5, lr}
	bl	OvlFunc_959_200d4b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	ldr	r0, =0x94c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5116
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_5116:
	ldr	r0, =0x949
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_512a
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_512a:
	ldr	r0, =0x94b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_513e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_513e:
	ldr	r0, =0xf2e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5152
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_5152:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.Lm959_5166
	b	.Lm959_52b8
.Lm959_5166:
	ldr	r2, =.Lm959_5170
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm959_5170:
	.word	.Lm959_51ec
	.word	.Lm959_51ec
	.word	.Lm959_51ec
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_520a
	.word	.Lm959_527a
	.word	.Lm959_527a
	.word	.Lm959_520a
	.word	.Lm959_52ac
	.word	.Lm959_52ac
	.word	.Lm959_52ac
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_520a
	.word	.Lm959_5248
	.word	.Lm959_5248
	.word	.Lm959_520a
	.word	.Lm959_520a
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_5298
.Lm959_51ec:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009150
	b	.Lm959_5264
.Lm959_520a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_52ce
	mov	r1, #0xda
	mov	r2, #0xf0
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.Lm959_52ce
.Lm959_5248:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200938c
.Lm959_5264:
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm959_52ce
.Lm959_527a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x94a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_52ce
	bl	OvlFunc_959_200a06c
	b	.Lm959_52ce
.Lm959_5298:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200a06c
	b	.Lm959_52ce
.Lm959_52ac:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_2009a44
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_52ce
.Lm959_52b8:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.Lm959_52ce:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d0e4

.thumb_func_start OvlFunc_959_200d324
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200d4dc
	ldr	r0, =0x943
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5346
	bl	OvlFunc_959_2008c78
.Lm959_5346:
	ldr	r0, =0x217
	bl	__SetFlag
	mov	r0, #0x86
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x944
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_536e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x217
	bl	__ClearFlag
.Lm959_536e:
	ldr	r0, =0x945
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5386
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	OvlFunc_959_200a2d4
.Lm959_5386:
	ldr	r0, =0x946
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53a2
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x86
	lsl	r0, #2
	bl	__ClearFlag
.Lm959_53a2:
	ldr	r0, =0x947
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53b0
	bl	OvlFunc_959_200a26c
.Lm959_53b0:
	ldr	r0, =0x948
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53be
	bl	OvlFunc_959_200a2a0
.Lm959_53be:
	bl	__CutsceneStart
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53d6
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53d6:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53ea
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53ea:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53fe
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53fe:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_5410
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_5410:
	mov	r3, r5
	add	r3, #0x23
	mov	r2, #2
	strb	r2, [r3]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_5430
	mov	r3, r5
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #0x10
	orr	r2, r1
	strb	r2, [r3]
.Lm959_5430:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__CutsceneEnd
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_80108c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d324

