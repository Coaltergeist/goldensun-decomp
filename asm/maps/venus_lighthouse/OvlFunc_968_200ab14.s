	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200ab14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r1, #0
	mov	r0, #0
	str	r1, [sp, #0xc]
	bl	__MapActor_GetActor
	str	r0, [sp, #8]
	bl	__CutsceneStart
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r2, #9
	mov	r1, #0x25
	mov	r3, #0xd
	bl	__Func_8010704
	mov	r2, #0xf
	mov	r10, r2
.Lm968_2b60:
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r3, #0x23
	mov	r8, r0
	add	r3, r8
	mov	r11, r3
	ldrb	r3, [r3]
	cmp	r3, #2
	beq	.Lm968_2b8e
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm968_2ba8
.Lm968_2b8e:
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r1, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm968_2ba8:
	mov	r2, r8
	ldr	r4, =.Lm968_5164
	mov	r6, #0
	ldr	r0, [r2, #8]
	ldr	r3, [r4, r6]
	asr	r2, r0, #20
	mov	r5, #8
	cmp	r2, r3
	bne	.Lm968_2bd0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_2bd0
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.Lm968_2bd0
	mov	r5, #0
	b	.Lm968_2bf8
.Lm968_2bd0:
	add	r6, #1
	cmp	r6, #7
	bhi	.Lm968_2bf8
	lsl	r1, r6, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.Lm968_2bd0
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_2bd0
	mov	r1, r8
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.Lm968_2bd0
	mov	r5, r6
.Lm968_2bf8:
	cmp	r5, #8
	bne	.Lm968_2bfe
	b	.Lm968_2e98
.Lm968_2bfe:
	mov	r6, #0xf
	b	.Lm968_2c04
.Lm968_2c02:
	add	r6, #1
.Lm968_2c04:
	cmp	r6, #0x12
	bhi	.Lm968_2c30
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.Lm968_2c02
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2c02
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2c02
	mov	r5, #8
.Lm968_2c30:
	cmp	r5, #8
	bne	.Lm968_2c36
	b	.Lm968_2e98
.Lm968_2c36:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	lsl	r7, r5, #3
	ldr	r1, =.Lm968_5164
	mov	r9, r3
	ldr	r2, [r2, #0x10]
	add	r3, r7, #4
	ldr	r3, [r1, r3]
	asr	r2, #20
	cmp	r2, r3
	bhi	.Lm968_2c6e
	mov	r2, r8
	ldr	r1, [r2, #0xc]
	ldr	r0, [r2, #8]
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	add	r2, r3
	mov	r3, #0x14
	bl	OvlFunc_968_2008098
	mov	r1, #3
	str	r0, [sp, #0xc]
	mov	r0, #0
	bl	__Func_8092b08
.Lm968_2c6e:
	mov	r6, #0xf
.Lm968_2c70:
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.Lm968_2c9e
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2c9e
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2c9e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
.Lm968_2c9e:
	add	r6, #1
	cmp	r6, #0x12
	bls	.Lm968_2c70
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	add	r3, #0x22
	mov	r2, #0
	mov	r6, r8
	strb	r2, [r3]
	add	r6, #0x55
	mov	r3, #3
	strb	r3, [r6]
	ldr	r3, =0x1999
	mov	r1, r8
	mov	r2, #0
	str	r3, [r1, #0x48]
	str	r2, [r1, #0x44]
	ldr	r1, =.Lm968_5164
	add	r5, r7, #4
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, r8
	bl	OvlFunc_968_200894c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r3, r8
	mov	r2, #0
	add	r3, #0x59
	strb	r2, [r3]
	ldr	r3, =0xfff00000
	mov	r1, r8
	strb	r2, [r6]
	mov	r0, r10
	str	r3, [r1, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #2
	mov	r2, r11
	strb	r3, [r2]
	ldr	r1, =.Lm968_5164
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x30
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, r9
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r6, #0xf
.Lm968_2d3c:
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.Lm968_2d7c
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2d7c
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2d7c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, r6
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
.Lm968_2d7c:
	add	r6, #1
	cmp	r6, #0x12
	bls	.Lm968_2d3c
	ldr	r0, [sp, #0xc]
	bl	__DeleteActor
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm968_2d9a
	bl	__CutsceneEnd
	b	.Lm968_2ea8
.Lm968_2d9a:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0x23
	add	r8, r2
	mov	r3, r8
	add	r5, #0x23
	ldrb	r2, [r3]
	ldrb	r3, [r5]
	add	r6, #0x23
	and	r3, r2
	ldrb	r2, [r6]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	and	r3, r2
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm968_2e98
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0xc2
	ldr	r2, =.Lm968_577c
	lsl	r1, #2
	mov	r0, #0x88
	bl	OvlFunc_968_2008c5c
	mov	r6, r0
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, r6
	bl	__Actor_WaitScript
	mov	r0, r6
	ldr	r1, =gScript_968__0200d7c8
	bl	__Actor_SetScript
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r0, #0xd8
	ldr	r2, =gScript_968__0200dac8
	bl	OvlFunc_968_2008c5c
	mov	r1, #0x63
	ldr	r3, [r6]
	add	r1, r6
	mov	r5, r0
	mov	r8, r1
	b	.Lm968_2e8e
.Lm968_2e46:
	mov	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.Lm968_2e58
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm968_2e86
.Lm968_2e58:
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =.Lm968_5d3c
	mov	r1, #0x4d
	mov	r2, #0x23
	bl	__Func_8010560
	mov	r3, #0xd
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	b	.Lm968_2e98
.Lm968_2e86:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6]
.Lm968_2e8e:
	cmp	r3, #0
	bne	.Lm968_2e46
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm968_2e46
.Lm968_2e98:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0x12
	bhi	.Lm968_2ea4
	b	.Lm968_2b60
.Lm968_2ea4:
	bl	__CutsceneEnd
.Lm968_2ea8:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200ab14

