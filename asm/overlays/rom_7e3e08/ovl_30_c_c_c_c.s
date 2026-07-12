	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200b610
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.L363c
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
.L363c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200b610

.thumb_func_start OvlFunc_957_200b644
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r0, r2
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	sub	sp, #0xc
	mov	r12, r0
	cmp	r3, #0
	bne	.L36bc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r0, r2, r3
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r3, =0x93
	ldrh	r1, [r0]
	cmp	r2, r3
	bne	.L3676
	mov	r3, #0xa
	mov	r2, r12
	strh	r3, [r2]
.L3676:
	lsl	r3, r1, #16
	ldr	r2, =0x94
	asr	r3, #16
	cmp	r3, r2
	bne	.L3688
	mov	r1, r12
	mov	r3, #0x14
	strh	r3, [r1]
	ldrh	r1, [r0]
.L3688:
	lsl	r3, r1, #16
	ldr	r2, =0x95
	asr	r3, #16
	cmp	r3, r2
	bne	.L369a
	mov	r3, #0x1e
	mov	r2, r12
	strh	r3, [r2]
	ldrh	r1, [r0]
.L369a:
	lsl	r3, r1, #16
	ldr	r2, =0x96
	asr	r3, #16
	cmp	r3, r2
	bne	.L36ac
	mov	r1, r12
	mov	r3, #0x28
	strh	r3, [r1]
	ldrh	r1, [r0]
.L36ac:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.L36bc
	mov	r3, #0x32
	mov	r2, r12
	strh	r3, [r2]
.L36bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r6, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.L3722
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L36fe
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L36f8
	ldr	r3, =ewram_2001004
	strb	r0, [r3]
.L36f8:
	ldr	r0, =0x201
	bl	__SetFlag
.L36fe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L3722
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L371c
	ldr	r2, =ewram_2001004
	mov	r3, #5
	strb	r3, [r2]
.L371c:
	ldr	r0, =0x201
	bl	__SetFlag
.L3722:
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.L376e
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3748
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L376e
.L3748:
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, [r0, #0x50]
	mov	r2, #2
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
.L376e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.L37fc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #8
	bl	OvlFunc_957_20088c0
	mov	r0, #9
	bl	OvlFunc_957_20088c0
	mov	r0, #0xa
	bl	OvlFunc_957_20088c0
	ldr	r0, =0x211
	bl	__GetFlag
	cmp	r0, #0
	beq	.L37c0
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L37d0
.L37c0:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L37d0:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x212
	bl	__GetFlag
	cmp	r0, #0
	beq	.L37fa
	mov	r3, #0x20
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L37fa:
	ldr	r6, =gState
.L37fc:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x97
	cmp	r2, r3
	beq	.L380e
	b	.L39a4
.L380e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #8
	bl	OvlFunc_957_20088c0
	mov	r0, #9
	bl	OvlFunc_957_20088c0
	mov	r0, #0xa
	bl	OvlFunc_957_20088c0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_957_200b610
	str	r5, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0xe1
	str	r5, [r0, #0x6c]
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x34
	bne	.L3876
	ldr	r2, =.L3f6c
	add	r0, sp, #8
	mov	r3, #0
	str	r3, [r0]
	ldr	r1, [r2]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3876
	ldr	r3, =ewram_2001000
	mov	r2, #4
	strb	r0, [r3]
	strb	r0, [r3, #1]
	strb	r2, [r3, #2]
.L3876:
	ldr	r5, =ewram_2001001
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldrb	r2, [r5]
	cmp	r3, #0x63
	bne	.L38ac
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r1, #8
	mov	r3, #1
	bl	__Func_8010704
	ldrb	r2, [r5]
.L38ac:
	mov	r0, #0x80
	lsl	r3, r2, #24
	lsl	r0, #18
	cmp	r3, r0
	bne	.L38cc
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r1, #5
	lsl	r0, #16
	bl	_divsi3_RAM
	mov	r1, #0x80
	lsl	r1, #7
	add	r0, r1
	bl	OvlFunc_957_2008f6c
.L38cc:
	mov	r6, #0
	mov	r7, #0x80
	mov	r8, r6
	lsl	r7, #9
.L38d4:
	mov	r5, r6
	add	r5, #0xb
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #4
	strb	r2, [r3]
	str	r7, [r0, #0x18]
	str	r7, [r0, #0x1c]
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r6, #1
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, r6
	bl	__MapActor_SetAnim
	cmp	r6, #4
	ble	.L38d4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0xb
	bl	__Func_8092950
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_8092950
	mov	r1, #6
	mov	r0, #0x14
	bl	__Func_8092950
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L39a4:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3a04
	bl	OvlFunc_957_2008b30
	b	.L3a1c

	.pool_aligned

.L3a04:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r0, #0xe4
	add	r2, r1, r3
	lsl	r0, #1
	add	r3, #0x44
	str	r3, [r2]
	add	r2, r1, r0
	mov	r3, #0x18
	str	r3, [r2]
.L3a1c:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_957_200b644

.thumb_func_start OvlFunc_957_200ba30
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.L3a98
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #0x14]
	mov	r5, sp
	str	r3, [r6, #8]
	str	r3, [r5, #8]
	str	r2, [r6, #4]
	str	r2, [r5]
	bl	__Random
	mov	r1, r0
	mov	r0, #0xf0
	mov	r2, r5
	lsl	r0, #15
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x20]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L3ac4
	mov	r0, #0x86
	bl	__PlaySound
	b	.L3ac4
.L3a98:
	cmp	r7, #1
	bne	.L3ab0
	mov	r0, r6
	bl	__Func_809ba34
	cmp	r0, #0
	bne	.L3ac4
	mov	r2, r8
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.L3ac4
.L3ab0:
	cmp	r7, #2
	bne	.L3ac4
	mov	r0, r6
	bl	__Func_809ba34
	cmp	r0, #0
	bne	.L3ac4
	mov	r0, r6
	bl	__Func_809bb34
.L3ac4:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200ba30

.thumb_func_start OvlFunc_957_200bad4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	bl	__Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x202108
	mov	r8, r3
	bl	__Func_80b0840
	mov	r3, #0xfc
	add	r6, sp, #8
	lsl	r3, #17
	str	r3, [r6]
	mov	r3, #0xc0
	lsl	r3, #13
	str	r3, [r6, #4]
	mov	r3, #0x90
	lsl	r3, #16
	mov	r0, r6
	str	r3, [r6, #8]
	bl	__Func_80974d8
	mov	r5, r8
	add	r5, #0x58
	mov	r7, #0x17
.L3b0c:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_809ba90
	mov	r0, r5
	ldr	r1, =OvlFunc_957_200ba30
	bl	__Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	__Func_809ba70
	bl	__Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	__Sprite_SetColorswap
	bl	__Random
	mov	r1, #3
	bl	_udivsi3_RAM
	mov	r3, #0xc0
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	__WaitFrames
	add	r5, #0x48
	cmp	r7, #0
	bge	.L3b0c
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #8
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_8010704
	mov	r0, #0x32
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r2, r8
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L3bac:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L3bb6
	strb	r1, [r2]
.L3bb6:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L3bac
	bl	__Func_8012350
	bl	__Func_80b0894
	bl	__Func_80958e4
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200bad4

	.section .data
	.global .L4198
	.global .L41b0
	.global .L4270
	.global .L4318
	.global .L4468
	.global .L3eb4
	.global .L3ef4
	.global .L3f0c
	.global .L3f6c
	.global .L45e0
	.global .L4688
	.global .L4724
	.global .L476c
	.global .L4808
	.global .L4850
	.global gOvl_0200bf70

.L3eb4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3eb4, (0x3ef4-0x3eb4)
.L3ef4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3ef4, (0x3f0c-0x3ef4)
.L3f0c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f0c, (0x3f6c-0x3f0c)
.L3f6c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f6c, (0x3f70-0x3f6c)
gOvl_0200bf70:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f70, (0x4138-0x3f70)
	.global gOvl_0200c138
gOvl_0200c138:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4138, (0x4198-0x4138)
.L4198:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4198, (0x41b0-0x4198)
.L41b0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x41b0, (0x4270-0x41b0)
.L4270:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4270, (0x4318-0x4270)
.L4318:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4318, (0x4468-0x4318)
.L4468:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4468, (0x4478-0x4468)
	.global gScript_957__0200c478
gScript_957__0200c478:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4478, (0x44c8-0x4478)
	.global gScript_957__0200c4c8
gScript_957__0200c4c8:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x44c8, (0x4518-0x44c8)
	.global gScript_957__0200c518
gScript_957__0200c518:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4518, (0x457c-0x4518)
	.global gScript_957__0200c57c
gScript_957__0200c57c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x457c, (0x45e0-0x457c)
.L45e0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x45e0, (0x4688-0x45e0)
.L4688:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4688, (0x4724-0x4688)
.L4724:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4724, (0x476c-0x4724)
.L476c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x476c, (0x4808-0x476c)
.L4808:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4808, (0x4850-0x4808)
.L4850:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4850
