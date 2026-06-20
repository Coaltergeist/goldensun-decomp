	.include "macros.inc"

.thumb_func_start OvlFunc_907_2008240
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13ae
	bl	__MessageID
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L266
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L266:
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	ldr	r0, =0x301
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008240

