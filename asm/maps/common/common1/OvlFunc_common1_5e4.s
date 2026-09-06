	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_5e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	sub	sp, #0xc
	mov	r6, r0
	mov	r0, r10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xa
	ldrsh	r0, [r5, r2]
	mov	r9, r0
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	mov	r11, r3
	cmp	r6, #3
	beq	.Lc1_6f6
	bl	__GetPartySize
	mov	r7, r0
	cmp	r7, #0
	ble	.Lc1_636
	ldr	r3, =gState
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.Lc1_628:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.Lc1_628
.Lc1_636:
	cmp	r7, #1
	bgt	.Lc1_63e
	ldr	r0, =0x2083
	b	.Lc1_6f8
.Lc1_63e:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc1_652
	ldr	r0, =0x2084
	b	.Lc1_6f8
.Lc1_652:
	cmp	r6, #2
	bne	.Lc1_660
	mov	r0, #6
	mov	r5, #0
	bl	__WaitFrames
	b	.Lc1_678
.Lc1_660:
	ldr	r0, =0x207d
	bl	__MessageID
	mov	r1, #0
	mov	r0, r10
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r5, r0
.Lc1_678:
	cmp	r5, #0
	bne	.Lc1_6f6
	cmp	r5, r7
	bge	.Lc1_696
	add	r6, sp, #4
	mov	r5, r7
.Lc1_684:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.Lc1_684
.Lc1_696:
	cmp	r7, #0
	ble	.Lc1_6b4
	add	r6, sp, #4
	mov	r5, r7
.Lc1_69e:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.Lc1_6ae
	bl	__AddPartyMember
.Lc1_6ae:
	sub	r5, #1
	cmp	r5, #0
	bne	.Lc1_69e
.Lc1_6b4:
	bl	__Func_80a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.Lc1_6d4
	add	r6, sp, #4
	mov	r5, r7
.Lc1_6c2:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.Lc1_6c2
.Lc1_6d4:
	cmp	r7, #0
	ble	.Lc1_6ee
	add	r6, sp, #4
	mov	r5, r7
.Lc1_6dc:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__AddPartyMember
	cmp	r5, #0
	bne	.Lc1_6dc
.Lc1_6ee:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.Lc1_706
.Lc1_6f6:
	ldr	r0, =0x207e
.Lc1_6f8:
	bl	__MessageID
	mov	r0, r10
	mov	r1, #0
	bl	__ActorMessage
	b	.Lc1_826
.Lc1_706:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_8019908
	ldr	r0, =0x207f
	bl	__MessageID
	mov	r0, r10
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lc1_75a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__MapActor_SetPos
.Lc1_75a:
	mov	r5, r11
	add	r5, #0x10
	mov	r6, r9
	mov	r2, r5
	add	r6, #0x10
	mov	r0, r8
	mov	r1, r9
	bl	__MapActor_TravelToAnimWait
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x1e
	mov	r0, r8
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	sub	r5, #0x20
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__MapActor_TravelToAnimWait
	mov	r2, r5
	mov	r1, r6
	mov	r0, r10
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	mov	r1, r8
	bl	__MapActor_SetExtra
	mov	r2, r5
	mov	r0, r8
	mov	r1, r9
	bl	__MapActor_TravelToAnimWait
	mov	r0, r10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, r11
	sub	r2, #0x30
	mov	r0, r8
	mov	r1, r9
	bl	__MapActor_TravelToAnimWait
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__MapActor_TravelToAnimWait
	mov	r1, r9
	mov	r2, r11
	mov	r0, r10
	bl	__MapActor_TravelToAnimWait
	mov	r0, r8
	bl	__Func_8079664
	mov	r3, #0x80
	ldr	r2, [sp]
	lsl	r3, #2
	add	r0, r2, r3
	bl	__SetFlag
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, r8
	mov	r2, #0xdc
	lsl	r6, r0, #4
	lsl	r2, #2
	asr	r1, #20
	add	r0, r6, r2
	bl	__SetFlagByte
	ldr	r1, [r5, #0x10]
	mov	r3, #0xde
	lsl	r3, #2
	asr	r1, #20
	add	r0, r6, r3
	bl	__SetFlagByte
.Lc1_826:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_5e4

