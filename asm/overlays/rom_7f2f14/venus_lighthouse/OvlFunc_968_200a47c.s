	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a47c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	mov	r2, #0
	str	r2, [sp, #0x10]
	str	r2, [sp, #0xc]
	bl	__CutsceneStart
	mov	r2, sp
	mov	r3, #0
	add	r2, #0x14
	mov	r8, r3
	str	r2, [sp, #8]
	mov	r3, #0xa
	mov	r11, r3
.Lm968_24a4:
	mov	r0, r11
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0xd
	bne	.Lm968_250a
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r10, r3
	cmp	r3, #7
	bne	.Lm968_250a
	mov	r5, #0x80
	lsl	r5, #2
	add	r5, r8
	mov	r0, r5
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	bne	.Lm968_250a
	mov	r0, r6
	bl	OvlFunc_968_200894c
	mov	r0, r5
	bl	__SetFlag
	mov	r1, r6
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	mov	r3, r6
	add	r3, #0x59
	strb	r2, [r1]
	strb	r7, [r3]
	sub	r3, #4
	strb	r7, [r3]
	mov	r2, r9
	mov	r3, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm968_26ca
.Lm968_250a:
	ldr	r3, [r6, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.Lm968_25b0
	mov	r7, #0x80
	lsl	r7, #2
	add	r7, r8
	mov	r0, r7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm968_25b0
	mov	r0, r11
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r3, [r6, #0x10]
	mov	r5, #0
	asr	r3, #20
	str	r5, [r6, #0x44]
	cmp	r3, #0xc
	bgt	.Lm968_255a
	mov	r2, #0xe0
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0xfd
	ldr	r0, [r6, #8]
	bl	OvlFunc_968_2008058
	str	r0, [sp, #0x10]
	mov	r2, #0xf0
	ldr	r0, [r6, #8]
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0xfd
	bl	OvlFunc_968_2008058
	str	r0, [sp, #0xc]
.Lm968_255a:
	mov	r0, r6
	bl	OvlFunc_968_200894c
	mov	r1, #0
	mov	r2, #0
	mov	r0, r11
	bl	__MapActor_SetPos
	ldr	r0, [sp, #0x10]
	bl	__DeleteActor
	ldr	r0, [sp, #0xc]
	bl	__DeleteActor
	mov	r0, r7
	bl	__SetFlag
	b	.Lm968_26ca
.Lm968_257e:
	mov	r0, r5
	add	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r6, #8]
	ldr	r2, [sp, #8]
	str	r3, [r2, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r2, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r2, #0x10]
	ldr	r3, [r0, #8]
	str	r3, [r6, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #0xc]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r0, #8]
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #0xc]
	ldr	r3, [r2, #0x10]
	mov	r7, r5
	str	r3, [r0, #0x10]
	b	.Lm968_25f8
.Lm968_25b0:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x13
	beq	.Lm968_25ba
	b	.Lm968_26bc
.Lm968_25ba:
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm968_26bc
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x3c]
	mov	r3, r6
	add	r3, #0x55
	str	r0, [r6, #0x14]
	str	r0, [r6, #0x28]
	mov	r5, #0
	strb	r0, [r3]
	add	r3, #0xf
	strh	r0, [r3]
	mov	r7, r8
	cmp	r5, r8
	bge	.Lm968_25f8
.Lm968_25e4:
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r5, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm968_257e
	add	r5, #1
	cmp	r5, r8
	blt	.Lm968_25e4
.Lm968_25f8:
	mov	r5, r7
	add	r5, #0xa
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r3, r0
	mov	r2, #0
	add	r3, #0x55
	str	r2, [r0, #0x14]
	str	r2, [r0, #0x28]
	mov	r1, #0xc0
	strb	r2, [r3]
	mov	r0, #0xc0
	add	r3, #0xf
	strh	r2, [r3]
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_80933d4
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0x80
	mov	r0, #0x88
	mov	r2, #0xac
	mov	r3, #1
	lsl	r1, #12
	lsl	r2, #17
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r5
	bl	OvlFunc_968_200a3d4
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #6
	bne	.Lm968_2674
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	b	.Lm968_268e
.Lm968_2674:
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	strh	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
.Lm968_268e:
	strh	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_968_200a2a4
	str	r3, [r0, #0x6c]
	mov	r0, #0x28
	bl	OvlFunc_968_200a2c8
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #2
	strb	r3, [r0]
	add	r0, r7, r2
	bl	__SetFlag
	b	.Lm968_26ca
.Lm968_26bc:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r11, r3
	cmp	r2, #3
	bgt	.Lm968_26ca
	b	.Lm968_24a4
.Lm968_26ca:
	bl	__CutsceneEnd
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a47c

