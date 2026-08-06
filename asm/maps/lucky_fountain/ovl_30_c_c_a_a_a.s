	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LuckyFountain_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.Lm951_5c
	ldr	r0, =.Lm951_1aec
	b	.Lm951_5e
.Lm951_5c:
	ldr	r0, =.Lm951_1cfc
.Lm951_5e:
	pop	{r1}
	bx	r1
.func_end LuckyFountain_GetActors

.thumb_func_start OvlFunc_951_2008074
	push	{r5, r6, lr}
	ldr	r5, =0xe39
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_a2
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm951_a8
.Lm951_a2:
	add	r0, r5, #2
	bl	__MessageID
.Lm951_a8:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008074

.thumb_func_start OvlFunc_951_20080bc
	push	{r5, r6, lr}
	ldr	r5, =0xe19
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_ea
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm951_f0
.Lm951_ea:
	add	r0, r5, #2
	bl	__MessageID
.Lm951_f0:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20080bc

