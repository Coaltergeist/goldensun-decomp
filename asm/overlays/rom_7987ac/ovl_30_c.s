	.include "macros.inc"

.thumb_func_start OvlFunc_902_2008078
	ldr	r0, =.L7cc
	bx	lr
.func_end OvlFunc_902_2008078

.thumb_func_start OvlFunc_902_2008080
	push	{r5, lr}
	ldr	r5, =.L7f4
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_902_2008080

.thumb_func_start OvlFunc_902_2008098
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008098

.thumb_func_start OvlFunc_902_20080bc
	push	{lr}
	ldr	r0, =0x1cc9
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #9
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080bc

.thumb_func_start OvlFunc_902_20080dc
	push	{lr}
	ldr	r0, =0x1ccd
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xb
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080dc

.thumb_func_start OvlFunc_902_20080fc
	push	{lr}
	ldr	r0, =0x1cd0
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xc
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080fc

.thumb_func_start OvlFunc_902_200811c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1cd4
	bl	__Func_8092b94
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L196
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L196:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_8093040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x868
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_200811c

.thumb_func_start OvlFunc_902_20081c4
	push	{lr}
	ldr	r0, =0x1cda
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0x10
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20081c4

.thumb_func_start OvlFunc_902_20081e4
	push	{lr}
	ldr	r0, =0x1cee
	bl	__Func_8092b94
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0x17
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20081e4

.thumb_func_start OvlFunc_902_2008204
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	ldr	r0, =0x85b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L22e
	ldr	r0, =0x137c
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L23c
.L22e:
	ldr	r0, =0x1385
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L23c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2a8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L290
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1384
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2d4
.L290:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__Func_8079358
	b	.L2d4
.L2a8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L2d4:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008204

.thumb_func_start OvlFunc_902_20082fc
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	bl	__Func_8091750
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	OvlFunc_902_200811c
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809207c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20082fc

.thumb_func_start OvlFunc_902_2008338
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L364
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1384
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	b	.L374
.L364:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
.L374:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008338

.thumb_func_start OvlFunc_902_2008380
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3a2
	mov	r0, #4
	mov	r1, #0x13
	bl	__Func_80b0278
	b	.L3b0
.L3a2:
	ldr	r0, =0x1ce2
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
.L3b0:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008380

.thumb_func_start OvlFunc_902_20083c8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3ea
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L3f8
.L3ea:
	ldr	r0, =0x1ce4
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
.L3f8:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20083c8

.thumb_func_start OvlFunc_902_2008410
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L432
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L440
.L432:
	ldr	r0, =0x1ce6
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L440:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008410

.thumb_func_start OvlFunc_902_2008458
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L47a
	mov	r0, #1
	mov	r1, #0x16
	bl	__Func_80b3284
	b	.L488
.L47a:
	ldr	r0, =0x1cec
	bl	__Func_8092b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8092f84
.L488:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008458

.thumb_func_start OvlFunc_902_20084a0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x85b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4b8
	ldr	r0, =0x1382
	bl	__Func_8092b94
	b	.L4be
.L4b8:
	ldr	r0, =0x1cf4
	bl	__Func_8092b94
.L4be:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20084a0

.thumb_func_start OvlFunc_902_20084dc
	ldr	r0, =.L98c
	bx	lr
.func_end OvlFunc_902_20084dc

.thumb_func_start OvlFunc_902_20084e4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =ewram_2000240
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #5
	bne	.L536
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x78
	mov	r2, #8
	mov	r3, #0x43
	mov	r0, #0
	bl	__Func_8010424
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0x14]
	b	.L55a
.L536:
	cmp	r3, #7
	beq	.L53e
	cmp	r3, #0xb
	bne	.L55a
.L53e:
	mov	r1, #0x8e
	mov	r2, #0x80
	mov	r3, #0xa8
	lsl	r1, #18
	mov	r0, #0xe7
	lsl	r2, #13
	lsl	r3, #18
	bl	OvlFunc_902_2008570
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_902_2008030
	lsl	r1, #4
	bl	__Func_80041d8
.L55a:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_902_20084e4

.thumb_func_start OvlFunc_902_2008570
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__Func_800c150
	cmp	r0, #0
	beq	.L5d4
	ldr	r6, [r0, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r0
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, r7
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
.L5d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008570

	.section .data
	.global .L6dc

.L6dc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x6dc, (0x7cc-0x6dc)
.L7cc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7cc, (0x7f4-0x7cc)
.L7f4:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7f4, (0x98c-0x7f4)
.L98c:
	.incbin "overlays/rom_7987ac/orig.bin", 0x98c
