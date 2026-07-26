	.include "macros.inc"

.thumb_func_start Func_808d828  @ 0x0808d828
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r1, r6
	mov	r0, #2
	bl	FindMapActorEvent
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	mov	r8, r3
	cmp	r5, #0
	beq	.L8d88e
	ldr	r1, [r5, #8]
	cmp	r1, #0
	beq	.L8d88e
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8d864
	sub	r2, #0x64
	add	r2, r8
	mov	r3, #0
	strh	r3, [r2]
	ldr	r1, [r5, #8]
.L8d864:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r1, r3
	bge	.L8d886
	bl	CutsceneStart
	ldr	r0, [r5, #8]
	bl	MessageID
	mov	r0, r7
	mov	r1, #0
	bl	ActorMessage
	mov	r7, #0
	bl	CutsceneEnd
	b	.L8d8de
.L8d886:
	mov	r0, r6
	bl	_call_via_r1
	b	.L8d8dc
.L8d88e:
	mov	r0, #1
	mov	r1, r6
	bl	FindMapActorEvent
	mov	r5, r0
	cmp	r5, #0
	beq	.L8d8de
	ldr	r2, [r5]
	mov	r3, #0x30
	and	r2, r3
	cmp	r2, #0x30
	beq	.L8d8c8
	cmp	r2, #0x30
	bgt	.L8d8d2
	cmp	r2, #0
	beq	.L8d8b4
	cmp	r2, #0x20
	beq	.L8d8bc
	b	.L8d8d2
.L8d8b4:
	mov	r0, #0x7b
	bl	_PlaySound
	b	.L8d8d2
.L8d8bc:
	mov	r0, #0x80
	bl	_PlaySound
	bl	Player_EnterStairsUp
	b	.L8d8d2
.L8d8c8:
	mov	r0, #0x81
	bl	_PlaySound
	bl	Player_EnterStairsDown
.L8d8d2:
	mov	r3, #0xb8
	ldr	r2, [r5, #8]
	lsl	r3, #1
	add	r3, r8
	strh	r2, [r3]
.L8d8dc:
	mov	r7, #0
.L8d8de:
	mov	r0, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808d828

.thumb_func_start Func_808d8f0  @ 0x0808d8f0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	cmp	r0, #0xfc
	beq	.L8d918
	cmp	r0, #0xfc
	bgt	.L8d90e
	cmp	r0, #0xf9
	beq	.L8d93e
	b	.L8d98e
.L8d90e:
	cmp	r0, #0xfd
	beq	.L8d956
	cmp	r0, #0xfe
	beq	.L8d93e
	b	.L8d98e
.L8d918:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d98e
	mov	r0, r1
	mov	r2, #0
	mov	r1, #6
	bl	Func_8092708
	b	.L8d950
.L8d93e:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	bl	Func_8093c00
.L8d950:
	mov	r3, #0
	strh	r3, [r5]
	b	.L8d98e
.L8d956:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d976
	bl	Func_8093e28
	b	.L8d984
.L8d976:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L8d984
	bl	Func_8093fa0
.L8d984:
	mov	r3, #0xce
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
.L8d98e:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_808d8f0
