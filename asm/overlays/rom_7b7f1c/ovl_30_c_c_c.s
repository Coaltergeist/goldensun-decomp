	.include "macros.inc"

.thumb_func_start OvlFunc_930_20090b8
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfd
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_930_2009060
	str	r3, [r0, #0x6c]
	mov	r3, #0x38
	str	r3, [sp]
	mov	r5, #0x12
	mov	r0, #0x37
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x14
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x10
	mov	r0, #0x37
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092b08
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20090b8

.thumb_func_start OvlFunc_930_2009144
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #6
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0xe
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2009144

.thumb_func_start OvlFunc_930_2009180
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.L1198
	ldr	r0, =.L1c9c
	b	.L119a
.L1198:
	ldr	r0, =.L1b10
.L119a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_2009180

.thumb_func_start OvlFunc_930_20091b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r5, =gState
	ldrsh	r2, [r5, r2]
	ldr	r3, =0x58
	sub	sp, #8
	cmp	r2, r3
	bne	.L1252
	mov	r0, #0xa9
	bl	__Func_8091ff0
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, #0x15
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_930_2008870
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1224
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L1224:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L123a
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.L1456
.L123a:
	cmp	r3, #3
	beq	.L1240
	b	.L1456
.L1240:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L124c
	b	.L1456
.L124c:
	bl	OvlFunc_930_20081ec
	b	.L1456
.L1252:
	ldr	r3, =0x4a
	cmp	r2, r3
	beq	.L125a
	b	.L1456
.L125a:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L128e
	mov	r0, #0xe
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_930_20090b8
.L128e:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L12a4
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_SetAnim
	bl	OvlFunc_930_2009144
.L12a4:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #4
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L12be
	ldr	r0, =0x12f
	bl	__ClearFlag
.L12be:
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12e6
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12e6
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12e6
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L12e6:
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L132a
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.L132a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L132a
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	ldr	r0, =0x8b2
	bl	__SetFlag
	ldr	r0, =0x8b3
	bl	__SetFlag
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L132a:
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L137e
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, #1
	mov	r0, #0x36
	mov	r1, #0x15
	mov	r2, #0x35
	mov	r3, #0x15
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #0x12
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_8010704
	mov	r0, #0x2c
	mov	r1, #0x12
	mov	r2, #0x2b
	mov	r3, #0x11
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
.L137e:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13fa
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L13fa
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0x84
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa4
	mov	r2, #0x8c
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xb8
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r1, =gScript_930__02009730
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
.L13fa:
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1424
	mov	r1, #0xa4
	mov	r2, #0x8c
	lsl	r2, #17
	mov	r0, #9
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r1, =gScript_930__02009730
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
.L1424:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L1456
	ldr	r0, =0x8b1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1456
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1456
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1456
	bl	OvlFunc_930_2008b2c
.L1456:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_20091b0

	.section .data
	.global gScript_930__0200962c
	.global gScript_930__020096b8
	.global .L1788
	.global .L179e
	.global .L1918
	.global .L1a38
	.global .L17b4
	.global .L1844

	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1620, (0x162c-0x1620)
gScript_930__0200962c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x162c, (0x16b8-0x162c)
gScript_930__020096b8:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x16b8, (0x1730-0x16b8)
	.global gScript_930__02009730
gScript_930__02009730:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1730, (0x1788-0x1730)
.L1788:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1788, (0x179e-0x1788)
.L179e:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x179e, (0x17b4-0x179e)
.L17b4:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x17b4, (0x1844-0x17b4)
.L1844:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1844, (0x18ec-0x1844)
	.global gOvl_020098ec
gOvl_020098ec:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x18ec, (0x1918-0x18ec)
.L1918:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1918, (0x1a38-0x1918)
.L1a38:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1a38, (0x1b10-0x1a38)
.L1b10:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1b10, (0x1c9c-0x1b10)
.L1c9c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1c9c
