	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b850
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r9, r0
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	bl	__GetFieldActor
	mov	r10, r0
	bl	__CutsceneStart
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.Lm932_3886
	ldrh	r2, [r6, #6]
	mov	r8, r2
.Lm932_3886:
	mov	r7, #0
	mov	r5, sp
	b	.Lm932_3898

	.pool_aligned

.Lm932_3890:
	mov	r3, #0x80
	lsl	r3, #7
	add	r8, r3
	add	r7, #1
.Lm932_3898:
	cmp	r7, #3
	bgt	.Lm932_38c4
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_8011f54
	ldr	r3, [r6, #0xc]
	cmp	r0, r3
	bne	.Lm932_3890
.Lm932_38c4:
	cmp	r7, #4
	beq	.Lm932_39b6
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x22
	strb	r3, [r2]
	mov	r5, #0
	mov	r2, r10
	str	r5, [r2, #8]
	str	r5, [r2, #0x10]
	mov	r1, #0x10
	ldr	r0, [r6, #0x50]
	bl	__Sprite_AddLayer
	mov	r0, r9
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #13
	lsl	r1, #10
	bl	__Func_80933d4
	mov	r3, r8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	ldr	r3, =0xccc
	ldr	r2, .Lm932_391c	@ 0
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x5b
	strb	r2, [r3]
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	bge	.Lm932_3928
	ldr	r3, =0xffff
	add	r2, r3
	b	.Lm932_3928

	.align	2, 0
.Lm932_391c:
	.word	0
	.pool

.Lm932_3928:
	mov	r3, r6
	asr	r2, #16
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xc0
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r0, #0xe9
	bl	__PlaySound
.Lm932_3966:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x62
	beq	.Lm932_3988
	cmp	r0, #0x62
	bgt	.Lm932_3982
	cmp	r0, #0x60
	beq	.Lm932_3998
	cmp	r0, #0x61
	beq	.Lm932_3990
	b	.Lm932_399e
.Lm932_3982:
	cmp	r0, #0x63
	beq	.Lm932_39ac
	b	.Lm932_399e
.Lm932_3988:
	mov	r0, r6
	bl	OvlFunc_932_200b5ac
	b	.Lm932_399e
.Lm932_3990:
	mov	r0, r6
	bl	OvlFunc_932_200b668
	b	.Lm932_399e
.Lm932_3998:
	mov	r0, r6
	bl	OvlFunc_932_200b724
.Lm932_399e:
	mov	r0, r6
	bl	OvlFunc_932_200b738
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm932_3966
.Lm932_39ac:
	mov	r0, r6
	bl	OvlFunc_932_200b484
	bl	__CutsceneEnd
.Lm932_39b6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b850

