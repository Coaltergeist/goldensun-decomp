	.include "macros.inc"

	.section .text.after_a6b8, "ax", %progbits

.thumb_func_start OvlFunc_947_200a74c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =gState
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x74
	sub	sp, #8
	cmp	r2, r3
	bne	.L2788
	mov	r0, #8
	bl	OvlFunc_947_2008ba4
	mov	r0, #9
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xa
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xb
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xc
	bl	OvlFunc_947_2008ba4
	b	.L29fa
.L2788:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L2858
	mov	r3, #0
	mov	r2, #0x40
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x20
	mov	r0, #0x20
	str	r2, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #8
	bl	OvlFunc_947_2008ba4
	mov	r0, #9
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xa
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xb
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xc
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xd
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xe
	bl	OvlFunc_947_2008ba4
	mov	r0, #0xf
	bl	OvlFunc_947_2008ba4
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L27dc
	b	.L29fa
.L27dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L27ea
	b	.L29fa
.L27ea:
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x22
	mov	r2, #0x54
	mov	r3, #0x18
	bl	__CopyMapTiles
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	mov	r0, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #9
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xa
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xb
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xc
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xd
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xe
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xf
	bl	OvlFunc_947_2008ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	b	.L2918
.L2858:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L2922
	mov	r0, #0x92
	mov	r2, #0xc8
	lsl	r0, #18
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_common0_70
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2884
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
.L2884:
	mov	r0, #0
	bl	__Func_8091494
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x62
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L289c
	bl	OvlFunc_947_200a09c
.L289c:
	mov	r0, #8
	bl	OvlFunc_947_200a694
	mov	r0, #9
	bl	OvlFunc_947_200a694
	mov	r0, #0xa
	bl	OvlFunc_947_200a694
	mov	r0, #0xb
	bl	OvlFunc_947_200a694
	mov	r4, #0x80
	ldr	r2, =bss_36d0
	mov	r1, #0
	mov	r0, #0
	lsl	r4, #2
.L28be:
	add	r3, r1, r4
	add	r1, #1
	str	r0, [r2]
	str	r0, [r2, #4]
	str	r0, [r2, #8]
	str	r3, [r2, #0x10]
	add	r2, #0x14
	cmp	r1, #3
	bls	.L28be
	bl	OvlFunc_947_2009d84
	mov	r0, #1
	bl	__CutsceneWait
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_947_200a6b8
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L28f0
	b	.L29fa
.L28f0:
	mov	r5, #8
	b	.L28f6
.L28f4:
	add	r5, #1
.L28f6:
	cmp	r5, #0xb
	bhi	.L29fa
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r2, #0x25
	bne	.L28f4
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	cmp	r0, #9
	bne	.L28f4
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #8
	mov	r0, #0x1b
.L2918:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L29fa
.L2922:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L29fa
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_8092950
	mov	r0, #8
	bl	OvlFunc_947_2008ba4
	mov	r0, #9
	bl	OvlFunc_947_2008ba4
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	bl	OvlFunc_947_200a4cc
	mov	r0, #0xb
	bl	OvlFunc_947_200a5f8
	mov	r0, #0xc
	bl	OvlFunc_947_200a5f8
	mov	r0, #0xd
	bl	OvlFunc_947_200a5f8
	mov	r0, #0xb
	bl	OvlFunc_947_200a63c
	mov	r0, #0xc
	bl	OvlFunc_947_200a63c
	mov	r0, #0xd
	bl	OvlFunc_947_200a63c
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	OvlFunc_947_200a5f8
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29fa
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L29fa:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_200a74c

	.section .data
	.global .L339c
	.global .L33a8
	.global .L3438
	.global .L3498
	.global .L351c
	.global .L3618

.L339c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x339c, (0x33a8-0x339c)
.L33a8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x33a8, (0x3438-0x33a8)
.L3438:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3438, (0x3498-0x3438)
.L3498:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3498, (0x351c-0x3498)
.L351c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x351c, (0x3618-0x351c)
.L3618:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3618
