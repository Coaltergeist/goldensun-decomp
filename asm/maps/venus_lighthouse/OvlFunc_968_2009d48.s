	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009d48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r2, #0
	mov	r0, #9
	str	r2, [sp, #8]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r11, r0
	bl	__CutsceneStart
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r2, #7
	mov	r3, #5
	mov	r5, #0x2d
	mov	r0, #0x6d
	mov	r1, #0x2b
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x23
	add	r3, r6
	ldrb	r2, [r3]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm968_1da8
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.Lm968_1dc0
.Lm968_1da8:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm968_1dc0:
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0x2e
	beq	.Lm968_1dcc
	b	.Lm968_1efc
.Lm968_1dcc:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x2d
	beq	.Lm968_1dd8
	b	.Lm968_1efc
.Lm968_1dd8:
	ldr	r0, =0x301
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm968_1de6
	b	.Lm968_1efc
.Lm968_1de6:
	mov	r2, r11
	ldr	r3, [r2, #0x10]
	asr	r3, #20
	cmp	r3, #0x2d
	bgt	.Lm968_1e0a
	mov	r0, #0xba
	mov	r2, #0xb0
	mov	r1, #0
	lsl	r0, #18
	lsl	r2, #18
	mov	r3, #0x14
	bl	OvlFunc_968_2008098
	mov	r1, #3
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__Func_8092b08
.Lm968_1e0a:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r6
	add	r3, #0x22
	mov	r5, r6
	strb	r7, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r6, #0x48]
	mov	r3, r9
	mov	r1, #0x2d
	str	r7, [r6, #0x44]
	mov	r0, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, r6
	bl	OvlFunc_968_200894c
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r3, =0xfff00000
	strb	r7, [r5]
	mov	r0, #9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #2
	mov	r2, r10
	strb	r3, [r2]
	mov	r3, r9
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [sp, #8]
	bl	__DeleteActor
	mov	r3, r6
	add	r3, #0x59
	strb	r7, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xca
	orr	r5, r3
	mov	r2, #0xb6
	lsl	r2, #18
	strb	r5, [r0]
	lsl	r1, #18
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r1, =gScript_968__0200d3c4
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__MapActor_WaitScript
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm968_5ce8
	mov	r1, #0x6e
	mov	r2, #0x29
	bl	__Func_8010560
	mov	r3, #0x2a
	mov	r2, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__SetFlag
.Lm968_1efc:
	bl	__CutsceneEnd
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009d48

