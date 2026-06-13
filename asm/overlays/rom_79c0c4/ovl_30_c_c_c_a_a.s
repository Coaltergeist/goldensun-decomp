	.include "macros.inc"

.thumb_func_start OvlFunc_908_2008124
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L146
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_80b0278
	b	.L18a
.L146:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.L17c
	ldr	r0, =0x13e5
	bl	__MessageID
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	b	.L18a
.L17c:
	ldr	r0, =0x16f7
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.L18a:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_2008124

.thumb_func_start OvlFunc_908_20081a8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13ed
	bl	__MessageID
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_20081a8

.thumb_func_start OvlFunc_908_20081e0
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13f0
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L22a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L22a:
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_20081e0

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

