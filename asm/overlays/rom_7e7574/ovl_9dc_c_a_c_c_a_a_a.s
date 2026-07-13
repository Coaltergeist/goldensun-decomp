	.include "macros.inc"

.thumb_func_start OvlFunc_959_2009918
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, [r5, #0x10]
	mov	r3, r0
	cmp	r2, #0
	bge	.L1932
	ldr	r0, =0xfffff
	add	r2, r0
.L1932:
	ldr	r0, [r5, #8]
	asr	r1, r2, #20
	cmp	r0, #0
	bge	.L193e
	ldr	r2, =0xfffff
	add	r0, r2
.L193e:
	ldr	r2, [r3, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L194a
	ldr	r0, =0xfffff
	add	r2, r0
.L194a:
	ldr	r0, [r3, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L1956
	ldr	r3, =0xfffff
	add	r0, r3
.L1956:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r1, #1
	cmp	r3, #0
	bge	.L1962
	neg	r3, r3
.L1962:
	sub	r0, r1, r2
	cmp	r0, #0
	bge	.L196a
	neg	r0, r0
.L196a:
	add	r3, r0
	mov	r0, #1
	cmp	r3, #4
	ble	.L1974
	mov	r0, #0
.L1974:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009918

.thumb_func_start OvlFunc_959_2009980
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_8093554
	ldr	r3, [r5, #8]
	mov	r2, r0
	cmp	r3, #0
	bge	.L1998
	ldr	r0, =0xfffff
	add	r3, r0
.L1998:
	ldr	r0, [r5, #0x10]
	asr	r4, r3, #20
	cmp	r0, #0
	bge	.L19a4
	ldr	r1, =0xfffff
	add	r0, r1
.L19a4:
	ldr	r3, [r2, #8]
	asr	r1, r0, #20
	cmp	r3, #0
	bge	.L19b0
	ldr	r0, =0xfffff
	add	r3, r0
.L19b0:
	ldr	r0, [r2, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L19bc
	ldr	r2, =0xfffff
	add	r0, r2
.L19bc:
	sub	r3, r4, r3
	asr	r0, #20
	cmp	r3, #0
	bge	.L19c6
	neg	r3, r3
.L19c6:
	sub	r0, r1, r0
	cmp	r0, #0
	bge	.L19ce
	neg	r0, r0
.L19ce:
	cmp	r3, #7
	bgt	.L19d6
	cmp	r0, #5
	ble	.L19da
.L19d6:
	mov	r0, #0
	b	.L19dc
.L19da:
	mov	r0, #1
.L19dc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009980

.thumb_func_start OvlFunc_959_20099e8
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x35b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1a32
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a06
	ldr	r2, =0xfffff
	add	r3, r2
.L1a06:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1a12
	ldr	r2, =0xfffff
	add	r0, r2
.L1a12:
	asr	r0, #20
	cmp	r3, #0x2b
	bne	.L1a32
	cmp	r0, #0x1c
	ble	.L1a32
	cmp	r0, #0x1f
	bgt	.L1a32
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x29
	strh	r2, [r3]
	bl	OvlFunc_959_2008f30
.L1a32:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20099e8

.thumb_func_start OvlFunc_959_2009a44
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1aa2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a64
	ldr	r1, =0xfffff
	add	r3, r1
.L1a64:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L1a70
	ldr	r1, =0xfffff
	add	r3, r1
.L1a70:
	asr	r3, #20
	cmp	r2, #0x10
	bne	.L1aa2
	cmp	r3, #0x37
	ble	.L1aa2
	cmp	r3, #0x3a
	bgt	.L1aa2
	mov	r2, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r2, #8
	cmp	r0, r2
	beq	.L1a90
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bne	.L1aa2
.L1a90:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x28
	strh	r2, [r3]
	bl	OvlFunc_959_2008e80
.L1aa2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009a44

.thumb_func_start OvlFunc_959_2009ab0
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_809228c
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009ab0

.thumb_func_start OvlFunc_959_2009b24
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__CutsceneStart
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #1
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r2, #0
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, r5
	bl	__MapActor_SetIdle
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r6, =0x240d
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r6, #1
	bl	__MapActor_Emote
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009b24

.thumb_func_start OvlFunc_959_2009be4
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809280c
	ldr	r3, =.L5fa4
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.L1c22
	cmp	r2, #1
	bgt	.L1c10
	cmp	r2, #0
	beq	.L1c1a
	b	.L1c3a
.L1c10:
	cmp	r2, #2
	beq	.L1c2a
	cmp	r2, #3
	beq	.L1c32
	b	.L1c3a
.L1c1a:
	mov	r0, r5
	bl	OvlFunc_959_2009c4c
	b	.L1c40
.L1c22:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
	b	.L1c40
.L1c2a:
	mov	r0, r5
	bl	OvlFunc_959_2009cf0
	b	.L1c40
.L1c32:
	mov	r0, r5
	bl	OvlFunc_959_2009d60
	b	.L1c40
.L1c3a:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
.L1c40:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009be4

.thumb_func_start OvlFunc_959_2009c4c
	push	{r5, r6, lr}
	mov	r1, #1
	mov	r6, r0
	bl	__Func_80925cc
	ldr	r5, =0x241e
	mov	r0, r5
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r6
	lsl	r1, #1
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	add	r5, #2
	mov	r0, r6
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009c4c

.section .text.after_9ca4, "ax", %progbits

.thumb_func_start OvlFunc_959_2009cf0
	push	{r5, r6, lr}
	ldr	r6, =0x2424
	mov	r5, r0
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, r5
	ldr	r1, =0x101
	bl	__MapActor_Emote
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	add	r6, #3
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009cf0

.thumb_func_start OvlFunc_959_2009d60
	push	{r5, r6, lr}
	ldr	r6, =0x2428
	mov	r5, r0
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_DoAnim
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	add	r6, #3
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009d60

.thumb_func_start OvlFunc_959_2009dc4
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #0xf
	bl	OvlFunc_959_2009be4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =gState
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_8091eb0
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	ldr	r0, =0x94c
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009dc4

.thumb_func_start OvlFunc_959_2009e2c
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0xb
	bl	OvlFunc_959_2009be4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =gState
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_8091eb0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	ldr	r0, =0x949
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009e2c

.thumb_func_start OvlFunc_959_2009e94
	push	{r5, lr}
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	ldr	r5, =0x2438
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x41
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r0, r5, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r0, r5, #5
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r2, #0x58
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r5, #6
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0xa1
	mov	r1, #0x1f
	bl	__Func_8091f90
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #3
	bl	__Func_8091eb0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	ldr	r0, =0x94a
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009e94

.thumb_func_start OvlFunc_959_200a06c
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0xac
	mov	r2, #0xb0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r2, #0xb0
	mov	r0, #0xd
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xb4
	mov	r2, #0xc0
	lsl	r2, #15
	mov	r0, #0xe
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	bl	__CutsceneEnd
	bl	__MapTransitionIn
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a06c

.thumb_func_start OvlFunc_959_200a0cc
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0x10
	bl	__MapActor_Emote
	mov	r0, #0x10
	bl	OvlFunc_959_2009be4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =gState
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_8091eb0
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	ldr	r0, =0x94b
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a0cc

.thumb_func_start OvlFunc_959_200a134
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	mov	r0, #0x89
	lsl	r0, #2
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a134

.thumb_func_start OvlFunc_959_200a1c4
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_809280c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	ldr	r0, =0x225
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a1c4
