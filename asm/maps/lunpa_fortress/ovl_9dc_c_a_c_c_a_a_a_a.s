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
	bge	.Lm959_1932
	ldr	r0, =0xfffff
	add	r2, r0
.Lm959_1932:
	ldr	r0, [r5, #8]
	asr	r1, r2, #20
	cmp	r0, #0
	bge	.Lm959_193e
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_193e:
	ldr	r2, [r3, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.Lm959_194a
	ldr	r0, =0xfffff
	add	r2, r0
.Lm959_194a:
	ldr	r0, [r3, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.Lm959_1956
	ldr	r3, =0xfffff
	add	r0, r3
.Lm959_1956:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r1, #1
	cmp	r3, #0
	bge	.Lm959_1962
	neg	r3, r3
.Lm959_1962:
	sub	r0, r1, r2
	cmp	r0, #0
	bge	.Lm959_196a
	neg	r0, r0
.Lm959_196a:
	add	r3, r0
	mov	r0, #1
	cmp	r3, #4
	ble	.Lm959_1974
	mov	r0, #0
.Lm959_1974:
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
	bge	.Lm959_1998
	ldr	r0, =0xfffff
	add	r3, r0
.Lm959_1998:
	ldr	r0, [r5, #0x10]
	asr	r4, r3, #20
	cmp	r0, #0
	bge	.Lm959_19a4
	ldr	r1, =0xfffff
	add	r0, r1
.Lm959_19a4:
	ldr	r3, [r2, #8]
	asr	r1, r0, #20
	cmp	r3, #0
	bge	.Lm959_19b0
	ldr	r0, =0xfffff
	add	r3, r0
.Lm959_19b0:
	ldr	r0, [r2, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm959_19bc
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_19bc:
	sub	r3, r4, r3
	asr	r0, #20
	cmp	r3, #0
	bge	.Lm959_19c6
	neg	r3, r3
.Lm959_19c6:
	sub	r0, r1, r0
	cmp	r0, #0
	bge	.Lm959_19ce
	neg	r0, r0
.Lm959_19ce:
	cmp	r3, #7
	bgt	.Lm959_19d6
	cmp	r0, #5
	ble	.Lm959_19da
.Lm959_19d6:
	mov	r0, #0
	b	.Lm959_19dc
.Lm959_19da:
	mov	r0, #1
.Lm959_19dc:
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
	bne	.Lm959_1a32
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm959_1a06
	ldr	r2, =0xfffff
	add	r3, r2
.Lm959_1a06:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm959_1a12
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_1a12:
	asr	r0, #20
	cmp	r3, #0x2b
	bne	.Lm959_1a32
	cmp	r0, #0x1c
	ble	.Lm959_1a32
	cmp	r0, #0x1f
	bgt	.Lm959_1a32
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x29
	strh	r2, [r3]
	bl	OvlFunc_959_2008f30
.Lm959_1a32:
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
	bne	.Lm959_1aa2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm959_1a64
	ldr	r1, =0xfffff
	add	r3, r1
.Lm959_1a64:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.Lm959_1a70
	ldr	r1, =0xfffff
	add	r3, r1
.Lm959_1a70:
	asr	r3, #20
	cmp	r2, #0x10
	bne	.Lm959_1aa2
	cmp	r3, #0x37
	ble	.Lm959_1aa2
	cmp	r3, #0x3a
	bgt	.Lm959_1aa2
	mov	r2, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r2, #8
	cmp	r0, r2
	beq	.Lm959_1a90
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bne	.Lm959_1aa2
.Lm959_1a90:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x28
	strh	r2, [r3]
	bl	OvlFunc_959_2008e80
.Lm959_1aa2:
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
	bl	__MapActor_TravelBy
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
	bl	__MapActor_TravelBy
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r2, #0
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_TravelBy
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_Face
	ldr	r3, =.Lm959_5fa4
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.Lm959_1c22
	cmp	r2, #1
	bgt	.Lm959_1c10
	cmp	r2, #0
	beq	.Lm959_1c1a
	b	.Lm959_1c3a
.Lm959_1c10:
	cmp	r2, #2
	beq	.Lm959_1c2a
	cmp	r2, #3
	beq	.Lm959_1c32
	b	.Lm959_1c3a
.Lm959_1c1a:
	mov	r0, r5
	bl	OvlFunc_959_2009c4c
	b	.Lm959_1c40
.Lm959_1c22:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
	b	.Lm959_1c40
.Lm959_1c2a:
	mov	r0, r5
	bl	OvlFunc_959_2009cf0
	b	.Lm959_1c40
.Lm959_1c32:
	mov	r0, r5
	bl	OvlFunc_959_2009d60
	b	.Lm959_1c40
.Lm959_1c3a:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
.Lm959_1c40:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009be4

