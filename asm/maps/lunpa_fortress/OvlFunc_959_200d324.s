	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200d324
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200d4dc
	ldr	r0, =0x943
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5346
	bl	OvlFunc_959_2008c78
.Lm959_5346:
	ldr	r0, =0x217
	bl	__SetFlag
	mov	r0, #0x86
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x944
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_536e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x217
	bl	__ClearFlag
.Lm959_536e:
	ldr	r0, =0x945
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5386
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	OvlFunc_959_200a2d4
.Lm959_5386:
	ldr	r0, =0x946
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53a2
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x86
	lsl	r0, #2
	bl	__ClearFlag
.Lm959_53a2:
	ldr	r0, =0x947
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53b0
	bl	OvlFunc_959_200a26c
.Lm959_53b0:
	ldr	r0, =0x948
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_53be
	bl	OvlFunc_959_200a2a0
.Lm959_53be:
	bl	__CutsceneStart
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53d6
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53d6:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53ea
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53ea:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_53fe
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lm959_53fe:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_5410
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm959_5410:
	mov	r3, r5
	add	r3, #0x23
	mov	r2, #2
	strb	r2, [r3]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_5430
	mov	r3, r5
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #0x10
	orr	r2, r1
	strb	r2, [r3]
.Lm959_5430:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__CutsceneEnd
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_80108c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d324

