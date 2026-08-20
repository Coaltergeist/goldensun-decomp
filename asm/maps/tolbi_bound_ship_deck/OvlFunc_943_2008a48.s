	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008a48
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_a68
	ldr	r0, =0x1e08
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm943_aca
.Lm943_a68:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_aaa
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0x1d6f
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r3, #0x5a
	mul	r3, r0
	lsr	r3, #16
	add	r3, #0x3c
	add	r5, #0x64
	strh	r3, [r5]
	ldr	r1, =gScript_943__0200c4d8
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	b	.Lm943_aca
.Lm943_aaa:
	mov	r2, #0
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_809259c
	ldr	r0, =0x1d36
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lm943_aca:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008a48

