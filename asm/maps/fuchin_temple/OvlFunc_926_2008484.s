	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_2008484
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x88f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_4a8
	ldr	r0, =0x17d6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__CutsceneEnd
	b	.Lm926_500
.Lm926_4a8:
	ldr	r0, =0x1794
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm926_4f4
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0xc
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm926_4f4
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm926_4f4:
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm926_500:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008484

