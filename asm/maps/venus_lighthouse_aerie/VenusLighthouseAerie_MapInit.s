	.include "macros.inc"

.thumb_func_start VenusLighthouseAerie_MapInit
	push	{r5, r6, r7, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x88
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r6, #0xc
	mov	r7, #0
.Lm969_77a:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8092b08
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #8
	add	r6, #1
	str	r3, [r5, #0xc]
	cmp	r6, #0x11
	bls	.Lm969_77a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.Lm969_7fe
	cmp	r3, #3
	bgt	.Lm969_7d4
	cmp	r3, #1
	beq	.Lm969_7e8
	cmp	r3, #2
	beq	.Lm969_7f8
	b	.Lm969_852
.Lm969_7d4:
	cmp	r3, #9
	beq	.Lm969_810
	cmp	r3, #9
	bgt	.Lm969_7e2
	cmp	r3, #4
	beq	.Lm969_80a
	b	.Lm969_852
.Lm969_7e2:
	cmp	r3, #0x5d
	beq	.Lm969_804
	b	.Lm969_852
.Lm969_7e8:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm969_852
	bl	OvlFunc_969_20088b4
	b	.Lm969_852
.Lm969_7f8:
	bl	OvlFunc_969_200a360
	b	.Lm969_852
.Lm969_7fe:
	bl	OvlFunc_969_200b8c0
	b	.Lm969_852
.Lm969_804:
	bl	OvlFunc_969_200b8dc
	b	.Lm969_852
.Lm969_80a:
	bl	OvlFunc_969_200b924
	b	.Lm969_852
.Lm969_810:
	bl	__CutsceneStart
	ldr	r0, =0x345
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_822
	mov	r0, #0
	b	.Lm969_83c
.Lm969_822:
	ldr	r0, =0x346
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_830
	mov	r0, #1
	b	.Lm969_83c
.Lm969_830:
	ldr	r0, =0x347
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_844
	mov	r0, #2
.Lm969_83c:
	mov	r1, #0x41
	bl	__GiveItemTo
	b	.Lm969_84c
.Lm969_844:
	mov	r0, #3
	mov	r1, #0x41
	bl	__GiveItemTo
.Lm969_84c:
	mov	r0, #9
	bl	__Func_8091e9c
.Lm969_852:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_874
	bl	OvlFunc_969_20084bc
	cmp	r0, #0
	beq	.Lm969_874
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm969_874
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm969_874:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end VenusLighthouseAerie_MapInit

