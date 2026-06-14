	.include "macros.inc"

.thumb_func_start OvlFunc_939_20088ec
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L906
	ldr	r0, =0x2411
	bl	__MessageID
	b	.L952
.L906:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L94c
	ldr	r0, =0x94d
	bl	__GetFlag
	cmp	r0, #0
	bne	.L94c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r5, =0x24db
	mov	r0, r5
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	add	r5, #1
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r5
	bl	__MessageID
	ldr	r0, =0x9af
	bl	__SetFlag
	b	.L952
.L94c:
	ldr	r0, =0x1bb5
	bl	__MessageID
.L952:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20088ec

