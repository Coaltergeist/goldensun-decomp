	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_20088f8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0xe4
	bl	__Func_8078b60
	mov	r6, r0
	bl	__Func_808ba38
	cmp	r5, #0
	bne	.Lm951_982
	ldr	r7, =0xe23
	mov	r0, r7
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	cmp	r6, #0
	beq	.Lm951_9aa
	add	r0, r7, #2
	bl	__MessageID
	mov	r0, r6
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_9aa
	bl	__Func_8078550
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm951_95c
	add	r0, r7, #4
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm951_96e
.Lm951_95c:
	cmp	r5, #6
	bgt	.Lm951_9b4
	add	r0, r7, #5
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm951_96e:
	cmp	r5, #6
	bgt	.Lm951_9b4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm951_9b4
	ldr	r0, =0xe29
	b	.Lm951_9a6
.Lm951_982:
	cmp	r6, #0
	bne	.Lm951_98a
	ldr	r0, =0xe32
	b	.Lm951_9a6
.Lm951_98a:
	ldr	r0, =0xe33
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm951_9b4
	ldr	r0, =0xe31
.Lm951_9a6:
	bl	__MessageID
.Lm951_9aa:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm951_9d4
.Lm951_9b4:
	ldr	r0, =0xe2a
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xfe
	lsl	r0, #1
	mov	r1, #0
	bl	__SetDestMap2
	ldr	r0, =0x89
	mov	r1, #0xc
	bl	__Func_8091f90
.Lm951_9d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20088f8

