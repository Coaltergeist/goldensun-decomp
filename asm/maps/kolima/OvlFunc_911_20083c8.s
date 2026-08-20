	.include "macros.inc"
	.include "gba.inc"

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
	bl	__MapActor_TravelToAnimWait
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
	bl	__MapActor_TravelToWait
	mov	r0, #0xb0
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xea
	mov	r2, #0xc8
	mov	r0, #8
	bl	__MapActor_TravelToWait
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
.Lm911_564:
	mov	r3, #0x81
	mov	r0, #0xde
	mov	r1, r7
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm911_5d4
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
	beq	.Lm911_5c4
	neg	r3, r2
	str	r3, [r5, #0x24]
.Lm911_5c4:
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, r5
	ldr	r1, =gScript_911__0200ae20
	bl	__Actor_SetScript
.Lm911_5d4:
	mov	r0, #0x80
	lsl	r0, #11
	add	r6, #1
	add	r7, r0
	cmp	r6, #9
	bls	.Lm911_564
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

