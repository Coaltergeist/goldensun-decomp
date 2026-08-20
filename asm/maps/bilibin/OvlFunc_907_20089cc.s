	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_20089cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r9, r3
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	mov	r10, r3
	mov	r3, #0xc
	ldr	r6, [r0, #8]
	mov	r5, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r8, r3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	asr	r6, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0x10
	bne	.Lm907_a4c
	cmp	r7, #0xd
	beq	.Lm907_a60
.Lm907_a4c:
	mov	r3, #0x10
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm907_a60:
	mov	r3, r9
	cmp	r3, #0x10
	bne	.Lm907_ace
	mov	r3, r10
	cmp	r3, #0xd
	bne	.Lm907_ace
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	cmp	r7, #0xd
	bne	.Lm907_ab2
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.Lm907_aca
.Lm907_ab2:
	mov	r1, #0x8f
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xda
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
.Lm907_aca:
	bl	__CutsceneEnd
.Lm907_ace:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20089cc

