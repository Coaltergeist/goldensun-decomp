	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_20083b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_3fc
	ldr	r0, =0x1be8
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xf
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm884_3e8
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm884_424
.Lm884_3e8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf
	b	.Lm884_40e
.Lm884_3fc:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_416
	ldr	r0, =0x1191
	bl	__MessageID
	mov	r0, #0xb
.Lm884_40e:
	mov	r1, #0
	bl	__Func_8093054
	b	.Lm884_424
.Lm884_416:
	ldr	r0, =0xea8
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093054
.Lm884_424:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20083b4

