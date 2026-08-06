	.include "macros.inc"

.thumb_func_start OvlFunc_937_20081fc
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lm937_21a
	mov	r0, #8
	bl	__UI_Sanctum
	b	.Lm937_230
.Lm937_21a:
	bl	__CutsceneStart
	ldr	r0, =0x1a8f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm937_230:
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_20081fc

.thumb_func_start OvlFunc_937_2008240
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.Lm937_24e:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm937_25e
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.Lm937_25e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm937_24e
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xd
	beq	.Lm937_28a
	cmp	r3, #0xd
	bgt	.Lm937_27c
	cmp	r3, #0xc
	beq	.Lm937_286
	b	.Lm937_2fa
.Lm937_27c:
	cmp	r3, #0x10
	beq	.Lm937_28e
	cmp	r3, #0x13
	beq	.Lm937_292
	b	.Lm937_2fa
.Lm937_286:
	mov	r5, #0
	b	.Lm937_294
.Lm937_28a:
	mov	r5, #1
	b	.Lm937_294
.Lm937_28e:
	mov	r5, #2
	b	.Lm937_294
.Lm937_292:
	mov	r5, #3
.Lm937_294:
	mov	r0, #0x9e
	bl	__PlaySound
	lsl	r4, r5, #3
	ldr	r0, =.Lm937_ef8
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
.Lm937_2fa:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_2008240

.thumb_func_start KalayRooms_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lm937_324
	bl	OvlFunc_937_200833c
.Lm937_324:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end KalayRooms_MapInit

.thumb_func_start OvlFunc_937_200833c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0xf
	bgt	.Lm937_35a
	cmp	r3, #9
	bge	.Lm937_376
	cmp	r3, #3
	beq	.Lm937_360
	b	.Lm937_3c2
.Lm937_35a:
	cmp	r3, #0x11
	beq	.Lm937_376
	b	.Lm937_3c2
.Lm937_360:
	mov	r3, #4
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0xe
	mov	r2, #0x1e
	mov	r3, #0x10
	bl	__CopyMapTiles
	b	.Lm937_3d8
.Lm937_376:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm937_3b8
	mov	r0, #0xa
	bl	__DeleteFieldActor
	mov	r0, #0xb
	bl	__DeleteFieldActor
	mov	r0, #0xc
	bl	__DeleteFieldActor
	mov	r0, #0xd
	bl	__DeleteFieldActor
	mov	r0, #0xe
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__DeleteFieldActor
	mov	r0, #0x12
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r0, #0xf
	bl	__DeleteFieldActor
	b	.Lm937_3d8
.Lm937_3b8:
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_8092950
	b	.Lm937_3d8
.Lm937_3c2:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm937_3d8
	mov	r0, #0x10
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__DeleteFieldActor
.Lm937_3d8:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_200833c

	.section .data
	.global .Lm937_784
	.global .Lm937_8d4
	.global .Lm937_a0c
	.global .Lm937_a3c
	.global .Lm937_a48
	.global .Lm937_c88
	.global .Lm937_eb0
	.global MapEntrance_ARRAY_937__020084a0
	.global .Lm937_4d0
	.global .Lm937_6c8

MapEntrance_ARRAY_937__020084a0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4a0, (0x4d0-0x4a0)
.Lm937_4d0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4d0, (0x6c8-0x4d0)
.Lm937_6c8:
	.incbin "overlays/rom_7c3044/orig.bin", 0x6c8, (0x728-0x6c8)
	.global gOvl_02008728
gOvl_02008728:
	.incbin "overlays/rom_7c3044/orig.bin", 0x728, (0x784-0x728)
.Lm937_784:
	.incbin "overlays/rom_7c3044/orig.bin", 0x784, (0x79c-0x784)
	.global gScript_906__0200879c
gScript_906__0200879c:
	.incbin "overlays/rom_7c3044/orig.bin", 0x79c, (0x8d4-0x79c)
.Lm937_8d4:
	.incbin "overlays/rom_7c3044/orig.bin", 0x8d4, (0xa0c-0x8d4)
.Lm937_a0c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa0c, (0xa3c-0xa0c)
.Lm937_a3c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa3c, (0xa48-0xa3c)
.Lm937_a48:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa48, (0xc88-0xa48)
.Lm937_c88:
	.incbin "overlays/rom_7c3044/orig.bin", 0xc88, (0xeb0-0xc88)
.Lm937_eb0:
	.incbin "overlays/rom_7c3044/orig.bin", 0xeb0, (0xef8-0xeb0)
.Lm937_ef8:
	.incbin "overlays/rom_7c3044/orig.bin", 0xef8
