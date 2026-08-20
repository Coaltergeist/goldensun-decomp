	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a27c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xb
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xe
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xe6
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0x99
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r2]
	ldr	r3, =gScript_896__0200cbd0
	mov	r1, #0
	mov	r8, r3
	mov	r9, r1
	mov	r1, r8
	bl	__Actor_SetScript
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Actor_SetScript
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Actor_SetScript
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	mov	r1, r8
	strb	r3, [r2]
	bl	__Actor_SetScript
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x68]
	mov	r2, r5
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r2, r5
	add	r2, #0x55
	mov	r1, r9
	strb	r3, [r2]
	mov	r0, r5
	str	r1, [r5, #0xc]
	mov	r1, r8
	bl	__Actor_SetScript
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r6, r3
	strb	r6, [r2]
	mov	r1, r8
	bl	__Actor_SetScript
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a27c

