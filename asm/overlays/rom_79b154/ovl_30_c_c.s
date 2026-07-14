	.include "macros.inc"

.thumb_func_start OvlFunc_907_2008db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r2, =gOvl_02009d3c
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_907_2008d80
	mov	r7, r0
	cmp	r7, #0
	beq	.Leaa
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	cmp	r0, #0
	bgt	.Leaa
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__WaitFrames
	mov	r0, #0xb9
	bl	__PlaySound
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Actor_TravelTo
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r1, #1
	mov	r0, r8
	bl	__Actor_SetAnim
	ldr	r3, =gState
	mov	r4, #0xe0
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Le94
	bl	OvlFunc_907_2008cb4
	b	.Leaa
.Le94:
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lea0
	bl	OvlFunc_907_20089cc
	b	.Leaa
.Lea0:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Leaa
	bl	OvlFunc_907_2008fa0
.Leaa:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008db4


	.section .text.after_8f3c, "ax", %progbits


	.section .data
	.global ActorCmd_ARRAY_907__020091c0
	.global gScript_944__02009480
	.global .L1498
	.global .L1600
	.global .L16f0
	.global .L1738
	.global .L1744
	.global .L1a2c
	.global .L1bc4
	.global .L1cf0
	.global .L1d0c
	.global .L1d28
	.global .L1d88
	.global .L11d4
	.global .L11ec
	.global .L130c
	.global .L136c
	.global gOvl_020093fc

ActorCmd_ARRAY_907__020091c0:
	.incbin "overlays/rom_79b154/orig.bin", 0x11c0, (0x11d4-0x11c0)
.L11d4:
	.incbin "overlays/rom_79b154/orig.bin", 0x11d4, (0x11ec-0x11d4)
.L11ec:
	.incbin "overlays/rom_79b154/orig.bin", 0x11ec, (0x130c-0x11ec)
.L130c:
	.incbin "overlays/rom_79b154/orig.bin", 0x130c, (0x136c-0x130c)
.L136c:
	.incbin "overlays/rom_79b154/orig.bin", 0x136c, (0x13fc-0x136c)
gOvl_020093fc:
	.incbin "overlays/rom_79b154/orig.bin", 0x13fc, (0x142c-0x13fc)
	.global gOvl_0200942c
gOvl_0200942c:
	.incbin "overlays/rom_79b154/orig.bin", 0x142c, (0x1480-0x142c)
gScript_944__02009480:
	.incbin "overlays/rom_79b154/orig.bin", 0x1480, (0x1498-0x1480)
.L1498:
	.incbin "overlays/rom_79b154/orig.bin", 0x1498, (0x1600-0x1498)
.L1600:
	.incbin "overlays/rom_79b154/orig.bin", 0x1600, (0x16f0-0x1600)
.L16f0:
	.incbin "overlays/rom_79b154/orig.bin", 0x16f0, (0x1738-0x16f0)
.L1738:
	.incbin "overlays/rom_79b154/orig.bin", 0x1738, (0x1744-0x1738)
.L1744:
	.incbin "overlays/rom_79b154/orig.bin", 0x1744, (0x1a2c-0x1744)
.L1a2c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1a2c, (0x1bc4-0x1a2c)
.L1bc4:
	.incbin "overlays/rom_79b154/orig.bin", 0x1bc4, (0x1cf0-0x1bc4)
.L1cf0:
	.incbin "overlays/rom_79b154/orig.bin", 0x1cf0, (0x1d0c-0x1cf0)
.L1d0c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d0c, (0x1d28-0x1d0c)
.L1d28:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d28, (0x1d3c-0x1d28)
	.global gOvl_02009d3c
gOvl_02009d3c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d3c, (0x1d7c-0x1d3c)
	.global gScript_907__02009d7c
gScript_907__02009d7c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d7c, (0x1d88-0x1d7c)
.L1d88:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d88
