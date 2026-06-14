	.include "macros.inc"

.thumb_func_start OvlFunc_920_2008214
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x883
	bl	__SetFlag
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r3, #0x12
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008214

.thumb_func_start OvlFunc_920_2008280
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #0xf
	mov	r1, #6
	bl	__MapActor_DoAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008280

.thumb_func_start OvlFunc_920_20082ac
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_DoAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20082ac

.thumb_func_start OvlFunc_920_20082d8
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #0x11
	mov	r1, #6
	bl	__MapActor_DoAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20082d8

.thumb_func_start OvlFunc_920_2008304
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r6, r0
	cmp	r3, #0x23
	bne	.L330
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L330
	ldr	r0, =0x303
	bl	__SetFlag
	b	.L336
.L330:
	ldr	r0, =0x303
	bl	__ClearFlag
.L336:
	ldr	r3, [r6, #8]
	asr	r3, #20
	cmp	r3, #0x23
	bne	.L350
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L350
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__SetFlag
	b	.L358
.L350:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
.L358:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L36e
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3c2
.L36e:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3ba
	bl	__CutsceneStart
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #0x11
	mov	r1, #6
	bl	__MapActor_DoAnim
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0x24
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__CutsceneEnd
.L3ba:
	ldr	r0, =0x302
	bl	__SetFlag
	b	.L414
.L3c2:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L40e
	bl	__CutsceneStart
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x11
	mov	r1, #2
	bl	__MapActor_DoAnim
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0x24
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__CutsceneEnd
.L40e:
	ldr	r0, =0x302
	bl	__ClearFlag
.L414:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008304

.thumb_func_start OvlFunc_920_2008424
	push	{lr}
	sub	sp, #8
	mov	r3, #8
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x1f
	bl	__Func_8010704
	ldr	r0, =0x305
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008424

