	.include "macros.inc"

.thumb_func_start OvlFunc_936_20083d8
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff9fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x7ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L3f8
	mov	r0, #0x17
	mov	r1, #0x17
	bl	__Func_80b0278
	b	.L40e
.L3f8:
	bl	__CutsceneStart
	ldr	r0, =0x1ad1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_8093054
	bl	__CutsceneEnd
.L40e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20083d8

