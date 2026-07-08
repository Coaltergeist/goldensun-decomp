	.include "macros.inc"

.thumb_func_start OvlFunc_908_2008250
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13f6
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x1b
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L290
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L290:
	mov	r0, #0x1b
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_2008250

