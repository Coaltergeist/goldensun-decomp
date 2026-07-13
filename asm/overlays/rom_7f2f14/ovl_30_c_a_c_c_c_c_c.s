.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_968_2009f60
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #0
	str	r0, [sp, #0x10]
	bl	__MapActor_GetActor
	str	r0, [sp, #0xc]
	bl	__CutsceneStart
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r0, #0x6c
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
	mov	r1, #9
	mov	r9, r1
.L1f96:
	mov	r0, r9
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x23
	str	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	beq	.L1fc4
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L1fdc
.L1fc4:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1fdc:
	ldr	r4, =.L5128
	mov	r5, #0
	ldr	r0, [r6, #8]
	ldr	r3, [r4, r5]
	asr	r2, r0, #20
	mov	r7, #5
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, #0
	b	.L2024
.L2000:
	add	r5, #1
	cmp	r5, #3
	bhi	.L2024
	lsl	r1, r5, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, r5
.L2024:
	cmp	r7, #5
	bne	.L202a
	b	.L2226
.L202a:
	mov	r5, #9
	b	.L2030
.L202e:
	add	r5, #1
.L2030:
	cmp	r5, #0xb
	bhi	.L2058
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r9, r5
	beq	.L202e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	mov	r7, #5
.L2058:
	cmp	r7, #5
	bne	.L205e
	b	.L2226
.L205e:
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	ldr	r1, =.L5128
	lsl	r7, #3
	mov	r11, r3
	ldr	r2, [r0, #0x10]
	add	r3, r7, #4
	mov	r8, r3
	ldr	r3, [r1, r3]
	asr	r2, #20
	mov	r10, r1
	cmp	r2, r3
	bhi	.L2098
	ldr	r2, [r6, #0x10]
	ldr	r3, =0xfffc0000
	ldr	r1, [r6, #0xc]
	add	r2, r3
	ldr	r0, [r6, #8]
	mov	r3, #0x14
	bl	OvlFunc_968_2008098
	mov	r1, #3
	str	r0, [sp, #0x10]
	mov	r0, #0
	bl	__Func_8092b08
.L2098:
	mov	r0, r9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r6
	add	r3, #0x22
	mov	r0, #0
	mov	r5, r6
	strb	r0, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r1, [r6, #0x44]
	str	r3, [r6, #0x48]
	mov	r2, r10
	mov	r0, r8
	ldr	r3, [r2, r7]
	ldr	r2, [r2, r0]
	mov	r1, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_8010704
	mov	r0, r6
	bl	OvlFunc_968_200894c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r3, r6
	mov	r1, #0
	add	r3, #0x59
	strb	r1, [r3]
	ldr	r3, =0xfff00000
	strb	r1, [r5]
	mov	r0, r9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r2, [sp, #8]
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r10
	mov	r1, r8
	ldr	r2, [r0, r1]
	ldr	r3, [r0, r7]
	mov	r1, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2e
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, r11
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.L2138
	mov	r0, r2
	bl	__DeleteActor
.L2138:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L214a
	bl	__CutsceneEnd
	b	.L2236
.L214a:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r6, #0x23
	add	r5, #0x23
	ldrb	r2, [r6]
	ldrb	r3, [r5]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	mov	r0, #2
	and	r3, r2
	and	r3, r0
	cmp	r3, #0
	beq	.L2226
	mov	r5, #0xde
	mov	r6, #0xaa
	lsl	r5, #2
	lsl	r6, #2
	mov	r1, r6
	mov	r0, r5
	ldr	r2, =gScript_968__0200d488
	bl	OvlFunc_968_2008c5c
	mov	r1, r6
	mov	r7, r0
	ldr	r2, =gScript_968__0200d508
	mov	r0, r5
	bl	OvlFunc_968_2008c5c
	ldr	r3, [r7]
	mov	r6, r7
	mov	r5, r0
	add	r6, #0x63
	b	.L221c
.L21a0:
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L21b0
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2214
.L21b0:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L5d12
	mov	r1, #0x6d
	mov	r2, #0x25
	bl	__Func_8010560
	mov	r3, #0x2d
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2d
	mov	r1, #0x25
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, =.L5128
	ldr	r2, [r0, #8]
	ldr	r3, [r5]
	asr	r2, #20
	cmp	r2, r3
	bne	.L2204
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	ldr	r2, [r5, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2204
	ldr	r0, =0x302
	bl	__SetFlag
	b	.L220a
.L2204:
	ldr	r0, =0x303
	bl	__SetFlag
.L220a:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__SetFlag
	b	.L2226
.L2214:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r7]
.L221c:
	cmp	r3, #0
	bne	.L21a0
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L21a0
.L2226:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0xb
	bhi	.L2232
	b	.L1f96
.L2232:
	bl	__CutsceneEnd
.L2236:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009f60

.thumb_func_start OvlFunc_968_200a26c
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.L2294
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x27
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
.L2294:
	bl	__CutsceneEnd
	bl	OvlFunc_968_2009f60
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a26c
