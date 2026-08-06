	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_20090c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r5, [r3]
	ldr	r3, =.Lm897_3b00
	mov	r1, #0xa
	ldr	r0, [r3]
	sub	sp, #4
	bl	_udivsi3_RAM
	cmp	r0, #0
	beq	.Lm897_10fc
	ldr	r1, =0x40c
	mov	r2, #0
	add	r3, r5, r1
	str	r2, [r3]
	lsl	r1, r0, #16
	mov	r2, #0x80
	mov	r0, r1
	lsl	r2, #9
	bl	__Func_8012330
	b	.Lm897_1112
.Lm897_10fc:
	ldr	r3, =0x40c
	mov	r0, #1
	add	r2, r5, r3
	mov	r1, #1
	mov	r3, #1
	str	r3, [r2]
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm897_1112:
	ldr	r2, =.Lm897_3b00
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lm897_111e
	sub	r3, #3
	str	r3, [r2]
.Lm897_111e:
	ldr	r1, =.Lm897_3ac0
	mov	r0, #0
	mov	r8, r0
	mov	r10, r1
	mov	r2, #0
.Lm897_1128:
	mov	r3, r8
	lsl	r6, r3, #2
	mov	r0, r10
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.Lm897_1198
	mov	r0, r8
	add	r0, #0x10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	ldr	r2, [sp]
	cmp	r3, r1
	bne	.Lm897_1198
	ldr	r7, [r5, #0x40]
	cmp	r7, r3
	bne	.Lm897_1198
	mov	r0, r10
	ldr	r3, [r0, r6]
	add	r3, #1
	str	r3, [r0, r6]
	cmp	r3, #2
	bne	.Lm897_1168
	mov	r0, r5
	mov	r1, #3
	bl	__Actor_SetAnim
	ldr	r2, [sp]
.Lm897_1168:
	mov	r1, r10
	ldr	r3, [r1, r6]
	cmp	r3, #0x13
	bne	.Lm897_1190
	str	r2, [r5, #8]
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r7, [r5, #0x38]
	str	r7, [r5, #0x3c]
	str	r7, [r5, #0x40]
	mov	r0, r5
	mov	r1, #0xf
	str	r2, [sp]
	bl	__Func_80929d8
	ldr	r2, [sp]
	b	.Lm897_1198
.Lm897_1190:
	cmp	r3, #0x14
	bne	.Lm897_1198
	mov	r3, r10
	str	r2, [r3, r6]
.Lm897_1198:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bls	.Lm897_1128
	ldr	r3, =.Lm897_3b68
	ldr	r0, =0x3e7
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.Lm897_11b2
	b	.Lm897_1314
.Lm897_11b2:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Lm897_11be
	b	.Lm897_1314
.Lm897_11be:
	ldr	r2, =Func_8000888
	mov	r1, #0
	ldr	r6, =.Lm897_3ac0
	mov	r8, r1
	mov	r9, r2
.Lm897_11c8:
	bl	__Random
	ldr	r1, =0xffff
	bl	_umodsi3_RAM
	lsl	r0, #16
	asr	r0, #16
	mov	r11, r0
	mov	r0, r8
	add	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, r8
	lsl	r5, r3, #2
	mov	r7, r0
	ldr	r0, [r6, r5]
	mov	r10, r0
	cmp	r0, #0
	beq	.Lm897_11f0
	b	.Lm897_1304
.Lm897_11f0:
	ldr	r0, =0x246
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm897_1200
	mov	r0, #0xf6
	bl	__PlaySound
.Lm897_1200:
	mov	r3, #1
	str	r3, [r6, r5]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #12
	lsl	r3, #9
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x34]
	mov	r0, r7
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r7, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, r7
	ldr	r1, =gScript_897__0200ba00
	bl	__Actor_SetScript
	mov	r1, r11
	lsl	r6, r1, #16
	lsr	r6, #16
	mov	r0, r6
	bl	__cos
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	add	r0, r3
	str	r0, [r7, #8]
	mov	r0, r10
	str	r0, [r7, #0xc]
	mov	r0, r6
	bl	__sin
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r3, #0x97
	lsl	r3, #17
	add	r0, r3
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	__cos
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	mov	r0, #0x3f
	and	r1, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r5, r0
	mov	r0, r6
	bl	__sin
	mov	r6, r0
	bl	__Random
	mov	r3, #0x3f
	mov	r1, r0
	and	r1, r3
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r6
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	mov	r1, #0x8f
	add	r5, r3
	lsl	r1, #17
	add	r3, r0, r1
	mov	r2, #0
	mov	r0, r7
	mov	r1, r5
	bl	__Actor_TravelTo
	mov	r0, r7
	mov	r1, #0
	bl	__Func_80929d8
	ldr	r2, =.Lm897_3b00
	mov	r3, #0x1e
	str	r3, [r2]
	b	.Lm897_1314
.Lm897_1304:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bhi	.Lm897_1314
	b	.Lm897_11c8
.Lm897_1314:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_20090c4

.thumb_func_start OvlFunc_897_200935c
	push	{r5, lr}
	ldr	r2, =.Lm897_3b70
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lm897_136c
	sub	r3, #1
	str	r3, [r2]
	b	.Lm897_13fc
.Lm897_136c:
	ldr	r5, =.Lm897_3b6c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm897_137a
	sub	r3, #1
	str	r3, [r5]
	b	.Lm897_1384
.Lm897_137a:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	str	r0, [r5]
.Lm897_1384:
	ldr	r3, =.Lm897_3b6c
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.Lm897_13b0
	cmp	r2, #2
	bhi	.Lm897_1396
	cmp	r2, #1
	beq	.Lm897_13c8
	b	.Lm897_13e0
.Lm897_1396:
	cmp	r2, #3
	bne	.Lm897_13e0
	ldr	r3, =.Lm897_3b68
	str	r2, [r3]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x28
	b	.Lm897_13fa
.Lm897_13b0:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0xf
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x50
	b	.Lm897_13fa
.Lm897_13c8:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0xa0
	b	.Lm897_13fa
.Lm897_13e0:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0x7f
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	mov	r2, #0xa0
	lsr	r3, #16
	lsl	r2, #1
	add	r3, r2
.Lm897_13fa:
	str	r3, [r5]
.Lm897_13fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200935c

.thumb_func_start OvlFunc_897_2009410
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ec4
	ldr	r3, [r3]
	mov	r0, #0xf
	sub	sp, #8
	mov	r9, r3
	bl	__MapActor_GetActor
	mov	r10, r0
	ldr	r0, =OvlFunc_897_200935c
	bl	__StopTask
	ldr	r2, =.Lm897_3b68
	mov	r3, #3
	str	r3, [r2]
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_897_20090c4
	bl	__StopTask
	mov	r5, #0
.Lm897_145e:
	mov	r0, r5
	add	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #0xf
	bls	.Lm897_145e
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	OvlFunc_897_200a820
	mov	r0, #1
	bl	OvlFunc_897_200a820
	ldr	r3, =0x40c
	mov	r5, #0
	add	r3, r9
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	str	r5, [r3]
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	bl	OvlFunc_897_200ac9c
	bl	__Func_8093554
	mov	r3, r0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0xe7
	lsl	r3, #16
	str	r3, [r0, #8]
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x3c]
	str	r3, [r0, #0x40]
	str	r5, [r0, #0xc]
	str	r5, [r0, #0x24]
	str	r5, [r0, #0x2c]
	mov	r0, #4
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #4
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r8
	mov	r1, #0xc0
	ldr	r2, [r0, #0x50]
	ldr	r7, [r6, #0x50]
	lsl	r1, #7
.Lm897_1528:
	ldrh	r3, [r2, #0x1e]
	mov	r0, #0x80
	lsl	r0, #1
	add	r3, r0
	strh	r3, [r2, #0x1e]
	ldrh	r3, [r7, #0x1e]
	ldr	r0, =0xffffff00
	add	r3, r0
	strh	r3, [r7, #0x1e]
	mov	r0, r8
	ldr	r3, [r0, #8]
	add	r3, r1
	str	r3, [r0, #8]
	ldr	r3, [r6, #8]
	sub	r3, r1
	str	r3, [r6, #8]
	mov	r0, #1
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	__WaitFrames
	add	r5, #1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	cmp	r5, #0x13
	bls	.Lm897_1528
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r1, #6
	strh	r5, [r3, #0x1e]
	mov	r0, #0
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #0xf6
	mov	r2, #0x96
	bl	__MapActor_TravelTo
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xdc
	bl	__MapActor_TravelToWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r5, =0x10f8
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm897_1696
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm897_16a4
.Lm897_1696:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	add	r0, r5, #2
	bl	__MessageID
.Lm897_16a4:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x3c
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x10fb
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm897_17c0
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x10fd
	bl	__MessageID
	b	.Lm897_1806

	.pool_aligned

.Lm897_17c0:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x10fe
	bl	__MessageID
.Lm897_1806:
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8e
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xfe
	mov	r1, #1
	mov	r2, #0xa2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x91
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x1110000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x10ff
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r5, =0x40c
	mov	r0, #0x17
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	add	r5, r9
	mov	r3, #0
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #0xf3
	mov	r2, #0x90
	bl	__MapActor_TravelTo
	mov	r1, #0xca
	mov	r2, #0x90
	mov	r0, #1
	bl	__MapActor_TravelTo
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0xdc
	mov	r2, #0x96
	bl	__MapActor_TravelToAnim
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xf6
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm897_1b4c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm897_1b6c

	.pool_aligned

.Lm897_1b4c:
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x1103
	bl	__MessageID
.Lm897_1b6c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xdc
	mov	r2, #0x98
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xf
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0xf
	mov	r1, #0xab
	mov	r2, #0x98
	bl	__MapActor_TravelTo
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0xd9
	mov	r2, #0xb6
	bl	__MapActor_TravelToAnim
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd9
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xe7
	mov	r2, #0xaf
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r0, =0x1104
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	ldr	r6, =0x40c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	add	r6, r9
	mov	r3, #0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	mov	r8, r3
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r3, #1
	mov	r0, #1
	mov	r1, #1
	str	r3, [r6]
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	mov	r0, r8
	str	r0, [r6]
	mov	r1, #0x80
	mov	r0, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__MapActor_SetSpeed
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
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x96
	bl	__MapActor_TravelTo
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	bl	__MapActor_TravelTo
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0x28
	mov	r0, #0
	bl	OvlFunc_897_200ad48
	mov	r0, #0x14
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
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StartTask
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x82
	mov	r2, #0x71
	mov	r0, #0xf
	bl	__MapActor_TravelTo
	mov	r0, #0xf
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, r8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_897_200aff0
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_DoAnim
	mov	r5, #0
	b	.Lm897_1f78

	.pool_aligned

.Lm897_1f78:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm897_1f78
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #0xf
.Lm897_1fc8:
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__WaitFrames
	mov	r0, #1
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__WaitFrames
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.Lm897_1fc8
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, r5
	ldr	r2, =0xe666
	mov	r1, r5
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xda
	mov	r2, #0xb5
	mov	r3, #1
	lsl	r0, #16
	mov	r1, r5
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xa9
	mov	r2, #0x97
	mov	r0, #0xf
	bl	__MapActor_TravelTo
	mov	r0, #0xf
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe0
	mov	r2, #0x9e
	lsl	r2, #16
	mov	r3, #1
	mov	r1, r5
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0
	bl	OvlFunc_897_200a9a4
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm897_2164
	mov	r0, #0x28
	bl	__CutsceneWait
	b	.Lm897_2172

	.pool_aligned

.Lm897_2164:
	ldr	r0, =0x110c
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x28
	bl	__CutsceneWait
.Lm897_2172:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x90
	ldr	r2, [r0, #0xc]
	lsl	r3, #14
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x16
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm897_21f8
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	ldr	r6, [r7, #0x50]
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r6, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r5, r0
	strb	r3, [r6, #9]
	mov	r0, #0xde
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
	mov	r0, r7
	mov	r1, #3
	bl	__Func_808f140
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
.Lm897_21f8:
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	ldr	r0, =0x6666
	mov	r6, #0x80
	mov	r5, #0
	mov	r8, r0
	lsl	r6, #9
.Lm897_220c:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, r8
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	str	r6, [r7, #0x18]
	str	r6, [r7, #0x1c]
	cmp	r5, #0x17
	bls	.Lm897_220c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #0
	bl	OvlFunc_897_200ad48
	ldr	r0, =0x110d
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	cmp	r7, #0
	beq	.Lm897_2278
	mov	r0, r7
	bl	__DeleteActor
.Lm897_2278:
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r6, #0xe8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	lsl	r6, #1
	bl	__Func_80933d4
	mov	r1, r6
	mov	r0, #0xe8
	bl	OvlFunc_897_200ac1c
	ldr	r5, =0x2c7
	mov	r0, #1
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #0x90
	bl	OvlFunc_897_200ac1c
	mov	r0, #2
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_897_200ac1c
	mov	r0, #3
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =0x1590000
	ldr	r1, =0x2460000
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r0, #0xdb
	mov	r1, #0xab
	bl	OvlFunc_897_200ac1c
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r2, =0x40c
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a970
	bl	__StartTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0x84
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
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
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xf5
	mov	r0, #0
	mov	r2, #0x91
	bl	__MapActor_TravelTo
	mov	r1, #0xd7
	mov	r2, #0xa8
	mov	r0, #1
	bl	__MapActor_TravelTo
	mov	r0, #1
	bl	__MapActor_WaitMovement
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
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0xb8
	mov	r2, #0x57
	mov	r0, #0xf
	bl	__MapActor_TravelTo
	mov	r0, #0xf
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_DoAnim
	mov	r5, #0
.Lm897_2490:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm897_2490
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =OvlFunc_897_200a970
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #7
.Lm897_24e0:
	mov	r0, #0
	bl	OvlFunc_897_200a8dc
	mov	r0, r5
	bl	__WaitFrames
	mov	r0, #1
	bl	OvlFunc_897_200a8dc
	mov	r0, r5
	bl	__WaitFrames
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.Lm897_24e0
	mov	r0, #0
	bl	OvlFunc_897_200a8dc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	b	.Lm897_2578

	.pool_aligned

.Lm897_2578:
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StartTask
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0x7f
	mov	r2, #0x6e
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_DoAnim
	mov	r5, #0
.Lm897_25c8:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm897_25c8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #7
.Lm897_2618:
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__WaitFrames
	mov	r0, #1
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__WaitFrames
	mov	r3, #1
	sub	r5, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.Lm897_2618
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r0, #0x3f
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a970
	bl	__StartTask
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	ldr	r5, =OvlFunc_897_200b00c
	mov	r0, r5
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0xb8
	mov	r2, #0x57
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r5, #0
.Lm897_275c:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm897_275c
	ldr	r5, =OvlFunc_897_200b00c
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, r5
	bl	__StopTask
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	mov	r1, #1
	str	r3, [r2]
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	bl	OvlFunc_897_200b000
	ldr	r0, =0x814
	bl	__SetFlag
	ldr	r0, =0x83f
	bl	__SetFlag
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r0, #0x80
	lsl	r0, #1
	bl	__SetFlag
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2009410

