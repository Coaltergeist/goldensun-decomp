	.include "macros.inc"

.thumb_func_start KolimaRooms_MapInit
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	ldr	r0, =0x845
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm912_1f4
	mov	r5, #8
.Lm912_1e2:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r5, #1
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	cmp	r5, #0x16
	bls	.Lm912_1e2
.Lm912_1f4:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #7
	bne	.Lm912_23c
	mov	r5, #0xd
	mov	r6, #8
	mov	r0, #0x22
	mov	r1, #0x22
	mov	r2, #0x12
	mov	r3, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x22
	mov	r1, #0x5e
	mov	r2, #0x12
	mov	r3, #0x4c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x5e
	mov	r1, #0x22
	mov	r2, #0x4e
	mov	r3, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm912_29c
.Lm912_23c:
	mov	r3, r2
	sub	r3, #8
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.Lm912_29c
	mov	r5, #0xb
	mov	r6, #8
	mov	r0, #0x22
	mov	r1, #0x2b
	mov	r2, #0x13
	mov	r3, #0x17
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x22
	mov	r1, #0x5e
	mov	r2, #0x13
	mov	r3, #0x53
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x17
	mov	r0, #0x5e
	mov	r1, #0x22
	mov	r2, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm912_29c:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end KolimaRooms_MapInit

	.section .data
	.global .Lm912_4d8
	.global gOvl_02008318
	.global MapEntrance_ARRAY_912__02008318
gOvl_02008318:
MapEntrance_ARRAY_912__02008318:
	.incbin "overlays/rom_7a0010/orig.bin", 0x318, (0x498-0x318)
	.global gOvl_02008498
gOvl_02008498:
	.incbin "overlays/rom_7a0010/orig.bin", 0x498, (0x4d8-0x498)
.Lm912_4d8:
	.incbin "overlays/rom_7a0010/orig.bin", 0x4d8, (0x658-0x4d8)
	.global gOvl_02008658
gOvl_02008658:
	.incbin "overlays/rom_7a0010/orig.bin", 0x658
