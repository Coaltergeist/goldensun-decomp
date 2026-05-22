	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_1d4
	push	{lr}
	ldr	r3, =iwram_1ae8
	ldr	r0, =.L590
	ldr	r3, [r3]
	strh	r3, [r0]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	ldr	r1, =.L5b0
	strh	r3, [r0, #2]
	bl	__Func_5ee0
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d4

.thumb_func_start OvlFunc_200
	push	{r5, lr}
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_8fe38
	ldr	r2, =REG_BLDCNT
	ldr	r3, .L244	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .L248	@ 0xc04
	add	r2, #2
	strh	r3, [r2]
	ldr	r2, [r5, #0x10]
	ldr	r3, =0x534
	add	r1, r2, r3
	ldr	r3, =0x3f3f
	strh	r3, [r1]
	ldr	r3, =0x536
	add	r1, r2, r3
	mov	r3, #0x1f
	strh	r3, [r1]
	ldr	r3, =0x52a
	add	r2, r3
	mov	r3, #0xa
	strh	r3, [r2]
	bl	OvlFunc_2e0
	mov	r0, #0
	b	.L264

	.align	2, 0
.L244:
	.word	0x3f42
.L248:
	.word	0xc04
	.pool

.L264:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_200

.thumb_func_start OvlFunc_26c
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r2, [r3]
	ldr	r3, =.L610
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L27e
	ldr	r3, =.L614
	b	.L280
.L27e:
	ldr	r3, =.L616
.L280:
	ldrh	r2, [r3]
	ldr	r3, =REG_BG3HOFS
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_26c

.thumb_func_start OvlFunc_2a0
	ldr	r3, =iwram_1e70
	mov	r1, #0x82
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r3, #6
	ldrsh	r1, [r2, r3]
	ldr	r0, =.L610
	mov	r3, #0xc0
	sub	r3, r1
	str	r3, [r0]
	ldr	r3, =.L614
	mov	r1, #2
	ldrsh	r2, [r2, r1]
	strh	r2, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r1, =.L616
	lsr	r3, #2
	sub	r2, r3
	strh	r2, [r1]
	bx	lr
.func_end OvlFunc_2a0

.thumb_func_start OvlFunc_2e0
	push	{lr}
	ldr	r2, =OvlFunc_26c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2a0
	bl	__Func_41d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e0

	.section .data
	.global .L35c
	.global .L44c
	.global .L474
	.global .L4a4

.L35c:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x35c, (0x44c-0x35c)
.L44c:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x44c, (0x474-0x44c)
.L474:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x474, (0x4a4-0x474)
.L4a4:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x4a4

	.section .bss

	.lcomm	.Lunused_588, 8
	.lcomm	.L590, 0x20
	.lcomm	.L5b0, 0x60
	.lcomm	.L610, 4
	.lcomm	.L614, 2
	.lcomm	.L616, 2
