	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_958_2008fd0
	push	{r5, lr}
	ldr	r5, =0x23cc
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm958_1016
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_100c
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm958_100c
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
.Lm958_100c:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm958_102e
.Lm958_1016:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm958_102e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008fd0

