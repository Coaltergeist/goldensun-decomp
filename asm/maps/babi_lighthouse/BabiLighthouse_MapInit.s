	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabiLighthouse_MapInit
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #1
	sub	sp, #8
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r6, =gState
	ldr	r3, =0xb1
	ldrsh	r1, [r6, r2]
	cmp	r1, r3
	beq	.Lm965_28dc
	add	r2, #0x82
	add	r3, r6, r2
	mov	r0, #0x90
	mov	r2, #1
	strh	r2, [r3]
	lsl	r0, #2
	ldr	r2, =0xb0
	add	r3, r6, r0
	strh	r2, [r3]
	mov	r12, r1
	b	.Lm965_2914
.Lm965_28dc:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r3, [r1, #8]
	asr	r2, r3, #20
	cmp	r2, #0x14
	beq	.Lm965_28ee
	b	.Lm965_2d3c
.Lm965_28ee:
	ldr	r3, [r1, #0x10]
	asr	r0, r3, #20
	cmp	r0, #0xc
	beq	.Lm965_28f8
	b	.Lm965_2d3c
.Lm965_28f8:
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #0xc
	mov	r0, #0x26
	b	.Lm965_2af2

	.pool_aligned

.Lm965_2914:
	cmp	r12, r2
	beq	.Lm965_291a
	b	.Lm965_2a7a
.Lm965_291a:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #6
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #5
	bne	.Lm965_2950
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2950
	mov	r1, #0x9c
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm965_2950:
	bl	OvlFunc_965_200a820
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x14]
	mov	r0, #0xc0
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm965_298a
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	bl	OvlFunc_965_200a7f4
.Lm965_298a:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	add	r2, #0x59
	strb	r3, [r2]
	sub	r2, #0x36
	strb	r3, [r2]
	add	r2, #0x3b
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	mov	r6, #0xc
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	ldr	r5, .Lm965_29ec	@ 0
	add	r3, #0x26
	strb	r5, [r3]
	mov	r3, #0xc0
	ldr	r2, [r1, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x1e
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	b	.Lm965_29f4

	.align	2, 0
.Lm965_29ec:
	.word	0
	.pool

.Lm965_29f4:
	strb	r5, [r3]
	mov	r3, #0x80
	ldr	r2, [r1, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x3c
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r2, #0x80
	lsl	r2, #8
	ldr	r3, [r1, #0x50]
	mov	r8, r2
	mov	r0, r8
	strh	r0, [r3, #0x1e]
	mov	r1, #0
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x5a
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	ldr	r3, [r1, #0x50]
	mov	r2, r8
	strh	r2, [r3, #0x1e]
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	b	.Lm965_2d3c
.Lm965_2a7a:
	ldr	r3, =0xaf
	cmp	r12, r3
	bne	.Lm965_2b7e
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #7
	bls	.Lm965_2a92
	b	.Lm965_2d3c
.Lm965_2a92:
	ldr	r2, =.Lm965_2a9c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm965_2a9c:
	.word	.Lm965_2abc
	.word	.Lm965_2ac4
	.word	.Lm965_2d24
	.word	.Lm965_2d24
	.word	.Lm965_2afc
	.word	.Lm965_2d24
	.word	.Lm965_2b28
	.word	.Lm965_2b54
.Lm965_2abc:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__SetFlag
.Lm965_2ac4:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2ad2
	b	.Lm965_2d3c
.Lm965_2ad2:
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x78
	mov	r1, #7
	mov	r2, #0x6d
	mov	r3, #7
	bl	__CopyMapTiles
	mov	r3, #0x2d
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #8
.Lm965_2af2:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm965_2d3c
.Lm965_2afc:
	mov	r0, #0xdc
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_965_20089f4
	mov	r3, #0x1b
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0xe
	bl	OvlFunc_965_2008eac
	b	.Lm965_2d3c
.Lm965_2b28:
	mov	r0, #0xe0
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_965_20089f4
	mov	r3, #0x1c
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x10
	bl	OvlFunc_965_2008eac
	b	.Lm965_2d3c
.Lm965_2b54:
	mov	r0, #0xe8
	ldr	r2, =0x2520000
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_965_20089f4
	mov	r3, #0xe
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x11
	bl	OvlFunc_965_2008eac
	b	.Lm965_2d3c
.Lm965_2b7e:
	ldr	r3, =0xae
	cmp	r1, r3
	beq	.Lm965_2b86
	b	.Lm965_2d34
.Lm965_2b86:
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0x80
	and	r5, r3
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #9
	mov	r0, #8
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2be8
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.Lm965_2be2
	ldr	r0, =0x301
	bl	__SetFlag
	b	.Lm965_2be8
.Lm965_2be2:
	ldr	r0, =0x301
	bl	__ClearFlag
.Lm965_2be8:
	ldr	r0, =0x988
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2c6a
	mov	r0, #0xa
	ldr	r1, =0xffc00000
	ldr	r2, =0xffc00000
	bl	__MapActor_SetPos
	mov	r1, #0x8c
	mov	r2, #0x94
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x9c
	mov	r2, #0xf8
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x94
	mov	r2, #0xf8
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r2, #0x94
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #5
	bl	__CutsceneWait
	b	.Lm965_2cc4
.Lm965_2c6a:
	ldr	r0, =0x989
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm965_2cc4
	mov	r1, #0x9c
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #5
	bl	__CutsceneWait
.Lm965_2cc4:
	ldr	r0, =0x985
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm965_2d14
	mov	r1, #0x8c
	mov	r2, #0xf0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa4
	mov	r2, #0xf0
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
.Lm965_2d14:
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Lm965_2d3c
.Lm965_2d24:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2d3c
	bl	OvlFunc_965_2008d4c
	b	.Lm965_2d3c
.Lm965_2d34:
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lm965_2d3c:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end BabiLighthouse_MapInit

	.section .data
	.global .Lm965_391c
	.global .Lm965_39e8
	.global .Lm965_3ac0
	.global .Lm965_3c28
	.global .Lm965_2fd4
	.global gOvl_0200b014
	.global .Lm965_302c
	.global .Lm965_3134
	.global .Lm965_3270
	.global .Lm965_3330
	.global .Lm965_34f8
	.global .Lm965_3558
	.global .Lm965_35b8
	.global gOvl_0200b5f8
	.global .Lm965_3694
	.global .Lm965_3754
	.global .Lm965_3784
	.global .Lm965_388c

.Lm965_2fd4:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x2fd4, (0x3014-0x2fd4)
gOvl_0200b014:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3014, (0x302c-0x3014)
.Lm965_302c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x302c, (0x3134-0x302c)
.Lm965_3134:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3134, (0x3270-0x3134)
.Lm965_3270:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3270, (0x3330-0x3270)
.Lm965_3330:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3330, (0x34f8-0x3330)
.Lm965_34f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x34f8, (0x3558-0x34f8)
.Lm965_3558:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3558, (0x35b8-0x3558)
.Lm965_35b8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35b8, (0x35f8-0x35b8)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35f8, (0x3694-0x35f8)
.Lm965_3694:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3694, (0x3754-0x3694)
.Lm965_3754:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3754, (0x3784-0x3754)
.Lm965_3784:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3784, (0x388c-0x3784)
.Lm965_388c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x388c, (0x391c-0x388c)
.Lm965_391c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x391c, (0x39e8-0x391c)
.Lm965_39e8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x39e8, (0x3ac0-0x39e8)
.Lm965_3ac0:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3ac0, (0x3c28-0x3ac0)
.Lm965_3c28:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3c28
