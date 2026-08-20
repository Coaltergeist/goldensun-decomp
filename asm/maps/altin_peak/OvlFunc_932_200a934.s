	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a934
	push	{r5, lr}
	ldr	r0, =0x909
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm932_2958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm932_2982
.Lm932_2958:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
.Lm932_2982:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.Lm932_2996
	cmp	r3, #0x62
	bne	.Lm932_29b8
.Lm932_2996:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_29ca
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	__CutsceneEnd
	b	.Lm932_29ca
.Lm932_29b8:
	cmp	r3, #0x63
	bne	.Lm932_29ca
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_29ca
	bl	OvlFunc_932_200b028
.Lm932_29ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a934

