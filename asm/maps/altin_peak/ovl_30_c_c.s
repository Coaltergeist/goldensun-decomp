	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #8
	mov	r9, r0
	ldrh	r3, [r7, #6]
	mov	r1, r9
	ldr	r0, [r7, #0xc]
	and	r1, r3
	sub	sp, #0xc
	mov	r9, r1
	cmp	r0, #0
	bge	.Lm932_375e
	ldr	r2, =0xffff
	add	r0, r2
.Lm932_375e:
	mov	r3, r7
	asr	r0, #16
	add	r3, #0x64
	mov	r10, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	mov	r1, r10
	sub	r3, r1
	ldr	r2, =.Lm932_51b4
	lsl	r3, #2
	add	r3, #0x40
	ldr	r2, [r2, r3]
	mov	r10, r2
	mov	r2, #0x66
	add	r2, r7
	mov	r8, r2
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.Lm932_37b0
	sub	r3, r2, #1
	mov	r0, #0xa0
	mov	r2, r8
	strh	r3, [r2]
	lsl	r0, #13
	lsl	r3, #16
	cmp	r3, r0
	bne	.Lm932_37a0
	mov	r0, #0xb8
	bl	__PlaySound
.Lm932_37a0:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lm932_37b0
	mov	r0, #0xe9
	bl	__PlaySound
.Lm932_37b0:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc0
	str	r3, [r5, #8]
	mov	r0, r10
	lsl	r1, #8
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r1, r9
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	str	r1, [r7, #8]
	ldr	r2, [r5, #8]
	mov	r0, #2
	str	r2, [r7, #0x10]
	bl	__Func_8011f54
	mov	r1, #0xc0
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r10
	ldr	r3, =Func_8000888
	.call_via r3
	neg	r0, r0
	mov	r1, r9
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_8011f54
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x14
	bgt	.Lm932_3832
	cmp	r6, r0
	bne	.Lm932_381c
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	b	.Lm932_3832
.Lm932_381c:
	cmp	r6, r0
	ble	.Lm932_382a
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm932_3832
.Lm932_382a:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
.Lm932_3832:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b738

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

.thumb_func_start OvlFunc_932_200b9c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, =.Lm932_525c
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bgt	.Lm932_3a28
.Lm932_39d8:
	ldr	r1, =.Lm932_5260
	ldrh	r3, [r1]
	ldr	r5, =s8_ARRAY_932__0200bd28
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	ldrsb	r0, [r5, r3]
	mov	r3, #1
	neg	r3, r3
	strh	r2, [r1]
	cmp	r0, r3
	bne	.Lm932_3a0c
	ldr	r3, .Lm932_39f8	@ 0
	strh	r3, [r1]
	b	.Lm932_39d8

	.align	2, 0
.Lm932_39f8:
	.word	0
	.pool

.Lm932_3a0c:
	add	r3, r2, #1
	strh	r3, [r1]
	lsl	r3, r2, #16
	asr	r3, #16
	ldrsb	r3, [r5, r3]
	ldr	r4, =.Lm932_525c
	lsl	r0, #1
	strh	r3, [r4]
	add	r0, r6, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x5000006
	ldr	r2, =0x80000009
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lm932_3a28:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b9c8

.thumb_func_start OvlFunc_932_200ba44
	push	{lr}
	ldr	r2, =0
	ldr	r3, =.Lm932_5260
	strh	r2, [r3]
	ldr	r3, =.Lm932_525c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200b9c8
	bl	__StartTask
	b	.Lm932_3a6c

	.pool_aligned

.Lm932_3a6c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ba44

	.section .data
	.global gScript_932__0200bd34
	.global gScript_932__0200bd48
	.global gScript_932__0200bd78
	.global gScript_932__0200bdec
	.global gScript_932__0200c01c
	.global gScript_932__0200c054
	.global gScript_932__0200c084
	.global gScript_932__0200c0b4
	.global gScript_932__0200c0e4
	.global gScript_932__0200c12c
	.global gScript_936__0200c164
	.global gOvl_0200c194
	.global .Lm932_420c
	.global .Lm932_426c
	.global .Lm932_4314
	.global .Lm932_43ec
	.global ActorCmd_ARRAY_943__0200c464
	.global .Lm932_4524
	.global .Lm932_459c
	.global .Lm932_4644
	.global .Lm932_4704
	.global .Lm932_477c
	.global gScript_943__0200c80c
	.global gOvl_0200c83c
	.global gOvl_0200c85c
	.global .Lm932_4928
	.global .Lm932_4940
	.global .Lm932_49a0
	.global gScript_882__0200ca00
	.global .Lm932_4a60
	.global .Lm932_4aa8
	.global .Lm932_4b68
	.global .Lm932_4b98
	.global .Lm932_4c40
	.global .Lm932_4cd0
	.global .Lm932_4d18
	.global .Lm932_4d24
	.global gScript_882__0200cd6c
	.global .Lm932_4d9c
	.global .Lm932_4dc0
	.global gScript_882__0200ce5c
	.global gScript_881__0200cebc
	.global .Lm932_4f34
	.global .Lm932_4fb8
	.global .Lm932_506c
	.global .Lm932_50cc
	.global .Lm932_512c
	.global .Lm932_5150
	.global .Lm932_51b0

	.global s8_ARRAY_932__0200bd28
s8_ARRAY_932__0200bd28:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d28, (0x3d34-0x3d28)
gScript_932__0200bd34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d34, (0x3d48-0x3d34)
gScript_932__0200bd48:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d48, (0x3d78-0x3d48)
gScript_932__0200bd78:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d78, (0x3dec-0x3d78)
gScript_932__0200bdec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3dec, (0x401c-0x3dec)
gScript_932__0200c01c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x401c, (0x4054-0x401c)
gScript_932__0200c054:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4054, (0x4084-0x4054)
gScript_932__0200c084:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4084, (0x40b4-0x4084)
gScript_932__0200c0b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40b4, (0x40e4-0x40b4)
gScript_932__0200c0e4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40e4, (0x412c-0x40e4)
gScript_932__0200c12c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x412c, (0x4164-0x412c)
gScript_936__0200c164:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4164, (0x4194-0x4164)
gOvl_0200c194:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4194, (0x420c-0x4194)
.Lm932_420c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x420c, (0x426c-0x420c)
.Lm932_426c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x426c, (0x4314-0x426c)
.Lm932_4314:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4314, (0x43ec-0x4314)
.Lm932_43ec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x43ec, (0x4464-0x43ec)
ActorCmd_ARRAY_943__0200c464:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4464, (0x4524-0x4464)
.Lm932_4524:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4524, (0x459c-0x4524)
.Lm932_459c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x459c, (0x4644-0x459c)
.Lm932_4644:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4644, (0x4704-0x4644)
.Lm932_4704:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4704, (0x477c-0x4704)
.Lm932_477c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x477c, (0x480c-0x477c)
gScript_943__0200c80c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x480c, (0x483c-0x480c)
gOvl_0200c83c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x483c, (0x485c-0x483c)
gOvl_0200c85c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x485c, (0x4928-0x485c)
.Lm932_4928:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4928, (0x4940-0x4928)
.Lm932_4940:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4940, (0x49a0-0x4940)
.Lm932_49a0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x49a0, (0x4a00-0x49a0)
gScript_882__0200ca00:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a00, (0x4a60-0x4a00)
.Lm932_4a60:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a60, (0x4aa8-0x4a60)
.Lm932_4aa8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4aa8, (0x4b68-0x4aa8)
.Lm932_4b68:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b68, (0x4b98-0x4b68)
.Lm932_4b98:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b98, (0x4c40-0x4b98)
.Lm932_4c40:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4c40, (0x4cd0-0x4c40)
.Lm932_4cd0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4cd0, (0x4d18-0x4cd0)
.Lm932_4d18:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d18, (0x4d24-0x4d18)
.Lm932_4d24:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d24, (0x4d6c-0x4d24)
gScript_882__0200cd6c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d6c, (0x4d9c-0x4d6c)
.Lm932_4d9c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d9c, (0x4dc0-0x4d9c)
.Lm932_4dc0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4dc0, (0x4e5c-0x4dc0)
gScript_882__0200ce5c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4e5c, (0x4ebc-0x4e5c)
gScript_881__0200cebc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4ebc, (0x4f34-0x4ebc)
.Lm932_4f34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4f34, (0x4fb8-0x4f34)
.Lm932_4fb8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4fb8, (0x506c-0x4fb8)
.Lm932_506c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x506c, (0x50cc-0x506c)
.Lm932_50cc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x50cc, (0x512c-0x50cc)
.Lm932_512c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x512c, (0x5150-0x512c)
.Lm932_5150:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x5150, (0x51b0-0x5150)
.Lm932_51b0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b0, (0x51b4-0x51b0)
.Lm932_51b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b4

	.section .bss
	.global .Lm932_5238
	.global .Lm932_523c
	.global .Lm932_5240

	.lcomm	.Lm932_5238, 4
	.lcomm	.Lm932_523c, 4
	.lcomm	.Lm932_5240, 0x1c
	.lcomm	.Lm932_525c, 4
	.lcomm	.Lm932_5260, 4
