	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008614
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1223
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L64e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L64e:
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008614

