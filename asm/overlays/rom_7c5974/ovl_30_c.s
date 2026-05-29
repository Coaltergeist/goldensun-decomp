	.include "macros.inc"

.thumb_func_start OvlFunc_940_200803c
	ldr	r0, =.L630
	bx	lr
.func_end OvlFunc_940_200803c

.thumb_func_start OvlFunc_940_2008044
	ldr	r0, =.L65c
	bx	lr
.func_end OvlFunc_940_2008044

.thumb_func_start OvlFunc_940_200804c
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L62
	ldr	r0, =.Lc98
	b	.L72
.L62:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L70
	ldr	r0, =.La64
	b	.L72
.L70:
	ldr	r0, =.L824
.L72:
	pop	{r1}
	bx	r1
.func_end OvlFunc_940_200804c

.thumb_func_start OvlFunc_940_200808c
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lb4
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb4
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_80b3284
	b	.Le4
.Lb4:
	bl	__Func_80916b0
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld2
	ldr	r0, =0x24fb
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
	b	.Le0
.Ld2:
	ldr	r0, =0x1bd0
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
.Le0:
	bl	__Func_8091750
.Le4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200808c

.thumb_func_start OvlFunc_940_20080fc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1bd5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8093054
	mov	r0, #0x94
	lsl	r0, #4
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20080fc

.thumb_func_start OvlFunc_940_2008124
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1bdb
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092f84
	mov	r0, #0x94
	lsl	r0, #4
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008124

.thumb_func_start OvlFunc_940_200814c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x24fe
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200814c

.thumb_func_start OvlFunc_940_200816c
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L188
	mov	r0, #0x15
	bl	__Func_80b29a8
	b	.L1c0
.L188:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1aa
	bl	__Func_80916b0
	ldr	r0, =0x2507
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L1c0
.L1aa:
	bl	__Func_80916b0
	ldr	r0, =0x1bdc
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L1c0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200816c

.thumb_func_start OvlFunc_940_20081d8
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1fc
	bl	__Func_80916b0
	ldr	r0, =0x24fa
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L212
.L1fc:
	bl	__Func_80916b0
	ldr	r0, =0x1be0
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L212:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20081d8

.thumb_func_start OvlFunc_940_2008224
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L242
	mov	r0, #0x19
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.L27a
.L242:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L264
	bl	__Func_80916b0
	ldr	r0, =0x24f9
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L27a
.L264:
	bl	__Func_80916b0
	ldr	r0, =0x1bcf
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L27a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008224

.thumb_func_start OvlFunc_940_2008294
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2b0
	ldr	r0, =0x24f6
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2be
.L2b0:
	ldr	r0, =0x1bde
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L2be:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008294

.thumb_func_start OvlFunc_940_20082d0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L310
	ldr	r2, =0xffff5fff
	add	r3, r5, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L2f8
	mov	r0, #0x1d
	mov	r1, #0xe
	bl	__Func_80b0278
	b	.L31e
.L2f8:
	bl	__Func_80916b0
	ldr	r0, =0x24f5
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L31e
.L310:
	ldr	r0, =0x1bcd
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L31e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20082d0

.thumb_func_start OvlFunc_940_2008338
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L354
	ldr	r0, =0x24f8
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	b	.L362
.L354:
	ldr	r0, =0x1bdf
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
.L362:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008338

.thumb_func_start OvlFunc_940_2008374
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3b4
	ldr	r2, =0xffff5fff
	add	r3, r5, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L39c
	mov	r0, #0x1e
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.L3c2
.L39c:
	bl	__Func_80916b0
	ldr	r0, =0x24f7
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L3c2
.L3b4:
	ldr	r0, =0x1bce
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
.L3c2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008374

.thumb_func_start OvlFunc_940_20083dc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	ldr	r5, =ewram_2000240
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	cmp	r6, #0xa
	bne	.L412
	ldr	r0, =0x12f
	bl	__Func_8079374
	mov	r1, #0xe2
	ldr	r2, =0x69
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe3
	lsl	r2, #1
	add	r3, r5, r2
	strh	r6, [r3]
.L412:
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_940_20083dc

.thumb_func_start OvlFunc_940_2008454
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L470
	mov	r0, #0x15
	bl	__Func_80b29a8
	b	.L47e
.L470:
	ldr	r0, =0x266b
	bl	__Func_8092b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8092f84
.L47e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008454

	.section .data
	.global .L4f8

.L4f8:
	.incbin "overlays/rom_7c5974/orig.bin", 0x4f8, (0x630-0x4f8)
.L630:
	.incbin "overlays/rom_7c5974/orig.bin", 0x630, (0x65c-0x630)
.L65c:
	.incbin "overlays/rom_7c5974/orig.bin", 0x65c, (0x824-0x65c)
.L824:
	.incbin "overlays/rom_7c5974/orig.bin", 0x824, (0xa64-0x824)
.La64:
	.incbin "overlays/rom_7c5974/orig.bin", 0xa64, (0xc98-0xa64)
.Lc98:
	.incbin "overlays/rom_7c5974/orig.bin", 0xc98
