	.include "macros.inc"

.thumb_func_start OvlFunc_965_200a8a0
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
	beq	.L28dc
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
	b	.L2914
.L28dc:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r3, [r1, #8]
	asr	r2, r3, #20
	cmp	r2, #0x14
	beq	.L28ee
	b	.L2d3c
.L28ee:
	ldr	r3, [r1, #0x10]
	asr	r0, r3, #20
	cmp	r0, #0xc
	beq	.L28f8
	b	.L2d3c
.L28f8:
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #0xc
	mov	r0, #0x26
	b	.L2af2

	.pool_aligned

.L2914:
	cmp	r12, r2
	beq	.L291a
	b	.L2a7a
.L291a:
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
	bne	.L2950
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2950
	mov	r1, #0x9c
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2950:
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
	beq	.L298a
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	bl	OvlFunc_965_200a7f4
.L298a:
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
	ldr	r5, .L29ec	@ 0
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
	b	.L29f4

	.align	2, 0
.L29ec:
	.word	0
	.pool

.L29f4:
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
	b	.L2d3c
.L2a7a:
	ldr	r3, =0xaf
	cmp	r12, r3
	bne	.L2b7e
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #7
	bls	.L2a92
	b	.L2d3c
.L2a92:
	ldr	r2, =.L2a9c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2a9c:
	.word	.L2abc
	.word	.L2ac4
	.word	.L2d24
	.word	.L2d24
	.word	.L2afc
	.word	.L2d24
	.word	.L2b28
	.word	.L2b54
.L2abc:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__SetFlag
.L2ac4:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2ad2
	b	.L2d3c
.L2ad2:
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
.L2af2:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L2d3c
.L2afc:
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
	b	.L2d3c
.L2b28:
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
	b	.L2d3c
.L2b54:
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
	b	.L2d3c
.L2b7e:
	ldr	r3, =0xae
	cmp	r1, r3
	beq	.L2b86
	b	.L2d34
.L2b86:
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
	bne	.L2be8
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L2be2
	ldr	r0, =0x301
	bl	__SetFlag
	b	.L2be8
.L2be2:
	ldr	r0, =0x301
	bl	__ClearFlag
.L2be8:
	ldr	r0, =0x988
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2c6a
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
	b	.L2cc4
.L2c6a:
	ldr	r0, =0x989
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2cc4
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
.L2cc4:
	ldr	r0, =0x985
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2d14
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
.L2d14:
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L2d3c
.L2d24:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2d3c
	bl	OvlFunc_965_2008d4c
	b	.L2d3c
.L2d34:
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
.L2d3c:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_200a8a0

	.section .data
	.global .L391c
	.global .L39e8
	.global .L3ac0
	.global .L3c28
	.global .L2fd4
	.global gOvl_0200b014
	.global .L302c
	.global .L3134
	.global .L3270
	.global .L3330
	.global .L34f8
	.global .L3558
	.global .L35b8
	.global gOvl_0200b5f8
	.global .L3694
	.global .L3754
	.global .L3784
	.global .L388c

.L2fd4:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x2fd4, (0x3014-0x2fd4)
gOvl_0200b014:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3014, (0x302c-0x3014)
.L302c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x302c, (0x3134-0x302c)
.L3134:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3134, (0x3270-0x3134)
.L3270:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3270, (0x3330-0x3270)
.L3330:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3330, (0x34f8-0x3330)
.L34f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x34f8, (0x3558-0x34f8)
.L3558:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3558, (0x35b8-0x3558)
.L35b8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35b8, (0x35f8-0x35b8)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35f8, (0x3694-0x35f8)
.L3694:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3694, (0x3754-0x3694)
.L3754:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3754, (0x3784-0x3754)
.L3784:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3784, (0x388c-0x3784)
.L388c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x388c, (0x391c-0x388c)
.L391c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x391c, (0x39e8-0x391c)
.L39e8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x39e8, (0x3ac0-0x39e8)
.L3ac0:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3ac0, (0x3c28-0x3ac0)
.L3c28:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3c28
