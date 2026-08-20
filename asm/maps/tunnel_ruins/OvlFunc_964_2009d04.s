	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2009d04
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	bl	__CutsceneStart
	mov	r6, #0
	mov	r10, sp
	mov	r11, r6
	mov	r7, #0xc
.Lm964_1d20:
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.Lm964_1de4
	mov	r2, #0x80
	lsl	r2, #2
	add	r5, r6, r2
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm964_1de4
	mov	r0, r7
	bl	__MapActor_GetActor
	bl	OvlFunc_964_2009038
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, r5
	bl	__SetFlag
	b	.Lm964_1f40
.Lm964_1d5e:
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x10]
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r8
	add	r5, #0xc
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, r7
	str	r3, [r6, #0xc]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, r5
	str	r3, [r6, #0x10]
	bl	__MapActor_GetActor
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r0, #8]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #0xc]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	mov	r9, r8
	str	r3, [r0, #0x10]
	b	.Lm964_1e56
.Lm964_1de4:
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #9
	beq	.Lm964_1df4
	b	.Lm964_1f36
.Lm964_1df4:
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r6, r3
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm964_1e06
	b	.Lm964_1f36
.Lm964_1e06:
	mov	r0, r7
	bl	__MapActor_GetActor
	str	r5, [r0, #0x14]
	mov	r0, r7
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r7
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r2, #0
	add	r0, #0x64
	mov	r8, r2
	strh	r5, [r0]
	mov	r9, r6
	cmp	r8, r6
	bge	.Lm964_1e56
.Lm964_1e40:
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm964_1d5e
	mov	r3, #1
	add	r8, r3
	cmp	r8, r6
	blt	.Lm964_1e40
.Lm964_1e56:
	mov	r5, r9
	add	r5, #0xc
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r2, r11
	str	r2, [r0, #0x14]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, r11
	str	r3, [r0, #0x28]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, r11
	add	r0, #0x64
	strh	r3, [r0]
	mov	r1, #0xc0
	mov	r0, #0xc0
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_80933d4
	bl	__Func_8093554
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0xa8
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r1, #12
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r5
	bl	OvlFunc_964_2009c2c
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.Lm964_1eee
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	b	.Lm964_1f08
.Lm964_1eee:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
.Lm964_1f08:
	strh	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_964_2009a98
	str	r3, [r0, #0x6c]
	mov	r0, #0x28
	bl	OvlFunc_964_2009abc
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r9
	bl	__SetFlag
	b	.Lm964_1f40
.Lm964_1f36:
	add	r6, #1
	add	r7, #1
	cmp	r6, #2
	bgt	.Lm964_1f40
	b	.Lm964_1d20
.Lm964_1f40:
	bl	__CutsceneEnd
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009d04

