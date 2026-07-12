	.include "macros.inc"

.thumb_func_start OvlFunc_939_20089d4
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.La54
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.La54
	ldr	r0, =0x94d
	bl	__GetFlag
	cmp	r0, #0
	bne	.La54
	ldr	r0, =0x9af
	bl	__GetFlag
	cmp	r0, #0
	bne	.La36
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_8097608
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x24db
	bl	__MessageID
	ldr	r0, =0x9af
	bl	__SetFlag
	b	.La3c
.La36:
	ldr	r0, =0x24e7
	bl	__MessageID
.La3c:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	ldr	r0, =0x24dc
	bl	__MessageID
	b	.La5a
.La54:
	ldr	r0, =0x1bbf
	bl	__MessageID
.La5a:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20089d4

