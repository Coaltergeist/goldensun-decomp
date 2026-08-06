	.include "macros.inc"

.thumb_func_start Jail_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =gState
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.Lm900_20a
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.Lm900_24c
.Lm900_20a:
	cmp	r3, #0xa
	bne	.Lm900_220
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x14
	orr	r3, r2
	strb	r3, [r0]
	b	.Lm900_24c
.Lm900_220:
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x14
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.Lm900_24c:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Jail_MapInit

	.section .data
	.global gOvl_0200835c
	.global MapEntrance_ARRAY_919__0200835c
	.global .Lm900_3bc
	.global .Lm900_3ec
	.global MapEntrance_ARRAY_937__020084a0
	.global gOvl_020082d0
	.global MapEntrance_ARRAY_900__020082d0
gOvl_020082d0:
MapEntrance_ARRAY_900__020082d0:
	.incbin "overlays/rom_797740/orig.bin", 0x2d0, (0x348-0x2d0)
	.global gOvl_02008348
gOvl_02008348:
	.incbin "overlays/rom_797740/orig.bin", 0x348, (0x35c-0x348)
gOvl_0200835c:
MapEntrance_ARRAY_919__0200835c:
	.incbin "overlays/rom_797740/orig.bin", 0x35c, (0x3bc-0x35c)
.Lm900_3bc:
	.incbin "overlays/rom_797740/orig.bin", 0x3bc, (0x3ec-0x3bc)
.Lm900_3ec:
	.incbin "overlays/rom_797740/orig.bin", 0x3ec, (0x4a0-0x3ec)
MapEntrance_ARRAY_937__020084a0:
	.incbin "overlays/rom_797740/orig.bin", 0x4a0
