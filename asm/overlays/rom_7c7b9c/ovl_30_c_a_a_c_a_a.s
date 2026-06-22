	.include "macros.inc"

.thumb_func_start OvlFunc_943_2008a48
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.La68
	ldr	r0, =0x1e08
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Laca
.La68:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Laaa
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
	b	.Laca
.Laaa:
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
.Laca:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008a48

.thumb_func_start OvlFunc_943_2008af0
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb10
	ldr	r0, =0x1e09
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	b	.Lb72
.Lb10:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb52
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	ldr	r0, =0x1d70
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x18
	bl	__ActorMessage
	mov	r0, #0x18
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
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	b	.Lb72
.Lb52:
	mov	r2, #0
	mov	r0, #0x18
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_809259c
	ldr	r0, =0x1d37
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
.Lb72:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008af0

