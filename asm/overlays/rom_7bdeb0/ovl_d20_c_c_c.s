	.include "macros.inc"

.thumb_func_start OvlFunc_934_20090e0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r1, [r7]
	ldr	r3, [r5, #8]
	ldr	r2, =0xfff00000
	mov	r8, r1
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #12
	mov	r6, sp
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r2, #0xa0
	lsl	r2, #14
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	cmp	r0, #0
	bne	.L118e
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, r8
	strb	r1, [r7]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.L1190
.L118e:
	mov	r0, #0
.L1190:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_934_20090e0

	.section .data
	.global .L2234
	.global .L22c4
	.global .L239c
	.global .L1f6c
	.global .L1f9c
	.global .L2014
	.global .L2134

.L1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.L1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.L2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.L2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
	.global gOvl_0200a1dc
gOvl_0200a1dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.L2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.L22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.L239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)
