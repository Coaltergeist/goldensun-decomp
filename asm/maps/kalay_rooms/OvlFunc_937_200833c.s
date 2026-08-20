	.include "macros.inc"
	.include "gba.inc"

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
