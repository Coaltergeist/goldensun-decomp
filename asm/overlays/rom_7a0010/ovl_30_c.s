	.include "macros.inc"

.thumb_func_start OvlFunc_912_2008068
	ldr	r0, =.L498
	bx	lr
.func_end OvlFunc_912_2008068

.thumb_func_start OvlFunc_912_2008070
	push	{r5, lr}
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L82
	ldr	r0, =.L4d8
	bl	OvlFunc_912_2008030
.L82:
	ldr	r5, =.L4d8
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_912_2008070

.thumb_func_start OvlFunc_912_200809c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lbe
	mov	r0, #0xd
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.Lcc
.Lbe:
	ldr	r0, =0x16ad
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
.Lcc:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_200809c

.thumb_func_start OvlFunc_912_20080e4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L106
	mov	r0, #0xe
	mov	r1, #0x11
	bl	__Func_80b0278
	b	.L114
.L106:
	ldr	r0, =0x16af
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
.L114:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_20080e4

.thumb_func_start OvlFunc_912_200812c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L14e
	mov	r0, #0xf
	mov	r1, #0x12
	bl	__Func_80b0278
	b	.L15c
.L14e:
	ldr	r0, =0x16b1
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L15c:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_200812c

.thumb_func_start OvlFunc_912_2008174
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L196
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_80b3284
	b	.L1a4
.L196:
	ldr	r0, =0x16b7
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
.L1a4:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_2008174

.thumb_func_start OvlFunc_912_20081bc
	ldr	r0, =.L658
	bx	lr
.func_end OvlFunc_912_20081bc

.thumb_func_start OvlFunc_912_20081c4
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
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1f4
	mov	r5, #8
.L1e2:
	mov	r0, r5
	bl	__Func_8092054
	add	r5, #1
	mov	r1, #0
	bl	__Func_800c528
	cmp	r5, #0x16
	bls	.L1e2
.L1f4:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #7
	bne	.L23c
	mov	r5, #0xd
	mov	r6, #8
	mov	r0, #0x22
	mov	r1, #0x22
	mov	r2, #0x12
	mov	r3, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x22
	mov	r1, #0x5e
	mov	r2, #0x12
	mov	r3, #0x4c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x5e
	mov	r1, #0x22
	mov	r2, #0x4e
	mov	r3, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	b	.L29c
.L23c:
	mov	r3, r2
	sub	r3, #8
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L29c
	mov	r5, #0xb
	mov	r6, #8
	mov	r0, #0x22
	mov	r1, #0x2b
	mov	r2, #0x13
	mov	r3, #0x17
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x22
	mov	r1, #0x5e
	mov	r2, #0x13
	mov	r3, #0x53
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r3, #0x17
	mov	r0, #0x5e
	mov	r1, #0x22
	mov	r2, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L29c:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_912_20081c4

	.section .data
	.global .L318

.L318:
	.incbin "overlays/rom_7a0010/orig.bin", 0x318, (0x498-0x318)
.L498:
	.incbin "overlays/rom_7a0010/orig.bin", 0x498, (0x4d8-0x498)
.L4d8:
	.incbin "overlays/rom_7a0010/orig.bin", 0x4d8, (0x658-0x4d8)
.L658:
	.incbin "overlays/rom_7a0010/orig.bin", 0x658
