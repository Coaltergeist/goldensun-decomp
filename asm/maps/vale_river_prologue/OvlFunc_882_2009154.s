	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009154
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_1168
	b	.Lm882_12b0
.Lm882_1168:
	bl	__CutsceneStart
	ldr	r0, =0x832
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_1246
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x23
	ldr	r3, [r0, #0x50]
	mov	r8, r0
	add	r8, r2
	ldrb	r5, [r3, #9]
	mov	r3, r8
	ldrb	r3, [r3]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	mov	r10, r3
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xd
	ldr	r2, =0x2bf0000
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r2, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x44]
	mov	r1, #0x40
	ldr	r2, =0x2bf
	mov	r0, #0xd
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	lsl	r5, #28
	bl	__Func_8012330
	lsr	r5, #30
	bl	__Func_8012350
	bl	__MapActor_PlayPendingSound
	ldr	r0, =0x832
	bl	__SetFlag
	mov	r0, #0
	mov	r1, r5
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, r8
	mov	r3, r10
	strb	r3, [r2]
.Lm882_1246:
	bl	OvlFunc_882_20092f0
	ldr	r0, =0x312
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_12ac
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_12ac
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_12ac
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x2b4ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.Lm882_1292
	ldr	r1, =0x29d
	mov	r0, #0x3e
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0x1b
	ldr	r2, =0x273
	bl	__MapActor_TravelToAnimWait
	b	.Lm882_12a4
.Lm882_1292:
	ldr	r1, =0x2cb
	mov	r0, #0x4b
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0x43
	ldr	r2, =0x2f5
	bl	__MapActor_TravelToAnimWait
.Lm882_12a4:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.Lm882_12ac:
	bl	__CutsceneEnd
.Lm882_12b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009154

