	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008764
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L784
	ldr	r0, =0x1be1
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.L7d8
.L784:
	ldr	r0, =0x1b9f
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L7d0
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L7d0
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L7d0:
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.L7d8:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008764

