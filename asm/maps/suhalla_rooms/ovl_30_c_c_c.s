	.include "macros.inc"

.thumb_func_start SuhallaRooms_MapInit
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.Lm962_a96
	ldr	r0, =0x96f
	bl	__SetFlag
.Lm962_a96:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #4
	orr	r3, r5
	mov	r2, #0
	strb	r3, [r0]
	mov	r0, #0xd
	mov	r10, r2
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r10
	add	r3, #0x26
	strb	r2, [r3]
	mov	r6, #0x80
	ldr	r3, [r0, #0x50]
	lsl	r6, #7
	strh	r6, [r3, #0x1e]
	ldr	r2, .Lm962_b18	@ 0
	ldr	r1, [r0, #0x50]
	mov	r8, r2
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	orr	r3, r5
	strb	r3, [r1, #9]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r3, [r0, #0x50]
	mov	r2, r0
	strh	r6, [r3, #0x1e]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r10
	str	r3, [r0, #0xc]
	mov	r0, #0
	b	.Lm962_b28

	.align	2, 0
.Lm962_b18:
	.word	0
	.pool

.Lm962_b28:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end SuhallaRooms_MapInit

	.section .data
	.global .Lm962_1090
	.global .Lm962_11ec
	.global .Lm962_e08
	.global .Lm962_f28

	.global MapEntrance_ARRAY_962__02008c3c
MapEntrance_ARRAY_962__02008c3c:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xc3c, (0xda4-0xc3c)
	.global gOvl_02008da4
gOvl_02008da4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xda4, (0xdd4-0xda4)
	.global gOvl_02008dd4
gOvl_02008dd4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xdd4, (0xe08-0xdd4)
.Lm962_e08:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xe08, (0xf28-0xe08)
.Lm962_f28:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xf28, (0x1090-0xf28)
.Lm962_1090:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x1090, (0x11ec-0x1090)
.Lm962_11ec:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x11ec
