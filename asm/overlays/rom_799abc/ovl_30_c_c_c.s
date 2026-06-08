	.include "macros.inc"

.thumb_func_start OvlFunc_905_20090c8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gOvl_020098ec
	ldr	r5, [r3]
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0xf0
	beq	.L111a
	cmp	r3, #0xf0
	bgt	.L10e8
	cmp	r3, #0x3c
	beq	.L10f8
	cmp	r3, #0xb4
	beq	.L1110
	b	.L112e
.L10e8:
	mov	r2, #0x87
	lsl	r2, #1
	cmp	r3, r2
	beq	.L111a
	add	r2, #0xd2
	cmp	r3, r2
	beq	.L1126
	b	.L112e
.L10f8:
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_80937b8
	b	.L112e
.L1110:
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	b	.L112e
.L111a:
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	b	.L112e
.L1126:
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_80924d4
.L112e:
	ldr	r3, =gState
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1148
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L1148:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_20090c8

.thumb_func_start OvlFunc_905_200915c
	push	{lr}
	ldr	r0, =OvlFunc_905_20090c8
	bl	__StopTask
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, =0x132f
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0xd
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x8e
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x869
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_200915c

.thumb_func_start OvlFunc_905_200921c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1272
	mov	r1, #0xac
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	b	.L1284
.L1272:
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
.L1284:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L12ae
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x2d
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L12ae:
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L131a
	mov	r1, #0x9a
	mov	r2, #0xe8
	lsl	r2, #16
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_80923e4
	ldr	r6, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #2
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L131c
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	sub	r3, #1
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r5, r3
	mov	r2, #0xe
	mov	r3, #0x24
	strb	r5, [r0]
	mov	r1, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	b	.L131c
.L131a:
	ldr	r6, =gState
.L131c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L1368
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x22
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #0xc0
	bl	__Func_8092158
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	OvlFunc_905_2008ce0
.L1368:
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1386
	ldr	r3, =gOvl_020098ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_905_20090c8
	lsl	r1, #4
	bl	__StartTask
.L1386:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_905_200921c

	.section .data
	.global .L1554
	.global .L1594
	.global .L15ac
	.global .L160c
	.global gOvl_02009690

.L1554:
	.incbin "overlays/rom_799abc/orig.bin", 0x1554, (0x1594-0x1554)
.L1594:
	.incbin "overlays/rom_799abc/orig.bin", 0x1594, (0x15ac-0x1594)
.L15ac:
	.incbin "overlays/rom_799abc/orig.bin", 0x15ac, (0x160c-0x15ac)
.L160c:
	.incbin "overlays/rom_799abc/orig.bin", 0x160c, (0x1690-0x160c)
gOvl_02009690:
	.incbin "overlays/rom_799abc/orig.bin", 0x1690, (0x1750-0x1690)
	.global gOvl_02009750
gOvl_02009750:
	.incbin "overlays/rom_799abc/orig.bin", 0x1750, (0x176c-0x1750)
	.global gOvl_0200976c
gOvl_0200976c:
	.incbin "overlays/rom_799abc/orig.bin", 0x176c, (0x1814-0x176c)
	.global gOvl_02009814
gOvl_02009814:
	.incbin "overlays/rom_799abc/orig.bin", 0x1814, (0x18ec-0x1814)
	.global gOvl_020098ec
gOvl_020098ec:
	.incbin "overlays/rom_799abc/orig.bin", 0x18ec
