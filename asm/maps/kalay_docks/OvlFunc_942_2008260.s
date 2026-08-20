	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008260
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8a6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm942_2b4
	ldr	r0, =0x1cfd
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm942_29a
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a6
	bl	__SetFlag
	b	.Lm942_2c2
.Lm942_29a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm942_2c2
.Lm942_2b4:
	ldr	r0, =0x1cfe
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
.Lm942_2c2:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008260

