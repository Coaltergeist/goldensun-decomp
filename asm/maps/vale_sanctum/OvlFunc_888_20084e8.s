	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_20084e8
	push	{r5, lr}
	sub	sp, #0x1c
	bl	__CutsceneStart
	ldr	r0, =.Lm888_3c9c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x1bfd
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm888_520
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm888_55c
.Lm888_520:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r3, #3
	mov	r2, #7
	mov	r1, #0x10
	mov	r4, #0xe
	str	r0, [sp]
	str	r3, [sp, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #0x10]
	mov	r5, #0
	mov	r0, #2
	mov	r2, #1
	mov	r3, #0x18
	str	r1, [sp, #0xc]
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm888_55c:
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20084e8

