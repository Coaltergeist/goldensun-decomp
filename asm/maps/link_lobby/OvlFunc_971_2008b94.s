	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008b94
	push	{r5, r6, r7, lr}
	ldr	r6, =0x2930
	bl	__CutsceneStart
	ldr	r7, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r7, r2
	mov	r0, #8
	ldr	r1, [r3]
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lbbe
	mov	r0, #1
	bl	__WaitFrames
.Lbbe:
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lc40
	mov	r0, #5
	bl	OvlFunc_971_2008128
	bl	OvlFunc_971_200803c
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc74
	add	r0, r6, #5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc28
	mov	r0, #0xfa
	mov	r1, #0
	lsl	r0, #2
	bl	__SetFlagByte
	ldr	r0, =0x173
	bl	__SetFlag
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__ClearFlag
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__SetFlag
	ldr	r2, =0x2aa
	add	r3, r7, r2
	add	r0, r6, #7
	strh	r5, [r3]
	b	.Lc76
.Lc28:
	ldr	r0, =0x173
	bl	__ClearFlag
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0
	bl	OvlFunc_971_2008128
	add	r0, r6, #6
	b	.Lc76
.Lc40:
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc6a
	mov	r0, #0
	bl	OvlFunc_971_2008128
	ldr	r0, =0x293d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	ldr	r0, =0x202
	bl	__ClearFlag
	ldr	r0, =0x173
	bl	__ClearFlag
.Lc6a:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc84
.Lc74:
	add	r0, r6, #3
.Lc76:
	bl	__MessageID
.Lc7a:
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Ld3c
.Lc84:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, r6
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	b	.Ld3c
.Lcb2:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lccc
	add	r0, r6, #2
	bl	__MessageID
	b	.Lcd2
.Lccc:
	add	r0, r6, #1
	bl	__MessageID
.Lcd2:
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld2e
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.Ld26
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld12
	add	r0, r6, #3
	bl	__MessageID
	b	.Ld18
.Ld12:
	add	r0, r6, #4
	bl	__MessageID
.Ld18:
	mov	r0, #1
	bl	OvlFunc_971_2008128
	ldr	r0, =0x202
	bl	__SetFlag
	b	.Lc7a
.Ld26:
	ldr	r0, =0x205
	bl	__SetFlag
	b	.Ld3c
.Ld2e:
	mov	r0, r6
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Ld3c:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008b94
