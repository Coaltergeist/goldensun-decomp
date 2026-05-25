	.include "macros.inc"

.thumb_func_start OvlFunc_7bc690_414
	ldr	r0, =.L236c
	bx	lr
.func_end OvlFunc_7bc690_414

.thumb_func_start OvlFunc_7bc690_41c
	push	{r5, lr}
	ldr	r5, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L444
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L444
	ldr	r0, =0x90a
	bl	__Func_8079358
.L444:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L458
	ldr	r0, =.L23c8
	b	.L46e
.L458:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L462
	ldr	r0, =.L2410
	b	.L46e
.L462:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L46c
	ldr	r0, =.L24b8
	b	.L46e
.L46c:
	ldr	r0, =.L23b0
.L46e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7bc690_41c

.thumb_func_start OvlFunc_7bc690_498
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x8b2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_8079358
	ldr	r0, =0x8b2
	bl	__Func_8079358
.L4be:
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7bc690_498

.thumb_func_start OvlFunc_7bc690_4dc
	ldr	r0, =.L2500
	bx	lr
.func_end OvlFunc_7bc690_4dc

	.section .data
	.global .L212c
	.global .L2174
	.global .L21d4
	.global .L2234
	.global .L22dc

.L212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.L2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.L21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.L2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.L22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
.L236c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.L23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.L23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.L2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.L24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
.L2500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)
