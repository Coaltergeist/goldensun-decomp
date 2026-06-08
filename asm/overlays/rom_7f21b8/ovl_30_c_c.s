	.include "macros.inc"

.thumb_func_start OvlFunc_967_2008084
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.Laa
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La6
	ldr	r0, =.L1974
	b	.Lac
.La6:
	ldr	r0, =.L189c
	b	.Lac
.Laa:
	ldr	r0, =.L1734
.Lac:
	pop	{r1}
	bx	r1
.func_end OvlFunc_967_2008084

.thumb_func_start OvlFunc_967_20080c8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lf8
	mov	r0, #0x20
	mov	r1, r6
	bl	__Func_80b0278
	b	.L14a

	.pool_aligned

.Lf8:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L112
	ldr	r0, =0x28f0
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	b	.L14a
.L112:
	ldr	r5, =0x26e3
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L13c
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.L142
.L13c:
	add	r0, r5, #2
	bl	__Func_8092b94
.L142:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L14a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20080c8

.thumb_func_start OvlFunc_967_200815c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L18c
	mov	r0, #0x21
	mov	r1, r5
	bl	__Func_80b0278
	b	.L1b4

	.pool_aligned

.L18c:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1a6
	ldr	r0, =0x28f2
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L1b4
.L1a6:
	ldr	r0, =0x26e7
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L1b4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200815c

.thumb_func_start OvlFunc_967_20081c8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L1f8
	mov	r0, #0x22
	mov	r1, r5
	bl	__Func_80b0278
	b	.L220

	.pool_aligned

.L1f8:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L212
	ldr	r0, =0x28f4
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L220
.L212:
	ldr	r0, =0x26e9
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L220:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20081c8

.thumb_func_start OvlFunc_967_2008234
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L25c
	mov	r0, r5
	bl	__Func_80b29a8
	b	.L292
.L25c:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L284
	ldr	r0, =0x28fc
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L292

	.pool_aligned

.L284:
	ldr	r0, =0x26f6
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L292:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008234

.thumb_func_start OvlFunc_967_200829c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L2cc
	mov	r0, #0xb
	mov	r1, r5
	bl	__Func_80b3284
	b	.L2f4

	.pool_aligned

.L2cc:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2e6
	ldr	r0, =0x28f6
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2f4
.L2e6:
	ldr	r0, =0x26eb
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L2f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200829c

.thumb_func_start OvlFunc_967_2008308
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldrh	r5, [r0, #6]
	lsl	r3, #6
	add	r5, r3
	mov	r0, #0xc0
	ldr	r3, =0xffffc000
	lsl	r0, #2
	and	r5, r3
	bl	__Func_8079358
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x26ec
	bl	__Func_8092b94
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	b	.L360

	.pool_aligned

.L360:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	lsl	r5, #16
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	asr	r5, #16
	mov	r3, #0x80
	lsl	r5, #16
	lsl	r3, #24
	cmp	r5, r3
	bne	.L3de
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
.L3de:
	ldr	r1, =ActorCmd_ARRAY_944__02009314
	mov	r0, #0xe
	bl	__Func_809207c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008308

.thumb_func_start OvlFunc_967_20083f4
	push	{lr}
	ldr	r0, =0x9bc
	bl	__Func_8079358
	bl	__Func_80916b0
	bl	__Func_808e118
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xf0
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #15
	neg	r1, r1
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x288b
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20083f4

.thumb_func_start OvlFunc_967_2008468
	push	{lr}
	ldr	r0, =0x9bc
	bl	__Func_8079358
	ldr	r0, =0x288b
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008468

.thumb_func_start OvlFunc_967_200848c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	mov	r0, #0x7b
	bl	__Func_80f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200848c

.thumb_func_start OvlFunc_967_20084b0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.L4d6
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4d2
	ldr	r0, =.L2010
	b	.L4e6
.L4d2:
	ldr	r0, =.L1eb4
	b	.L4e6
.L4d6:
	ldr	r0, =0x9a7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4e4
	ldr	r0, =gScript_887__02009ca4
	b	.L4e6
.L4e4:
	ldr	r0, =.L1a94
.L4e6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_967_20084b0

.thumb_func_start OvlFunc_967_2008508
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #1
	bl	__Func_807808c
	mov	r1, #0xc0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	ldr	r0, =0x2850
	bl	__Func_8092b94
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0x68
	mov	r2, #0x88
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x18
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r2, #0x10
	mov	r1, #0x10
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x46
	mov	r0, #0xb
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xb
	ldr	r1, =0x105
	mov	r2, #0x32
	bl	__Func_80937b8
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x9bf
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L6a8
	bl	OvlFunc_967_2008eec
	b	.L7f2
.L6a8:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_809280c
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_809280c
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8092c40
.L7f2:
	ldr	r0, =0x2861
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L89c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L8f8

	.pool_aligned

.L89c:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
.L8f8:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x41
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #2
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	b	.Lcec

	.pool_aligned

.Lcec:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Le64
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.Le64:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Le94
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.Le94:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lec4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.Lec4:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008508

.thumb_func_start OvlFunc_967_2008eec
	push	{lr}
	ldr	r0, =0x2880
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_809280c
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_809280c
	mov	r1, #0
	ldr	r0, =0x2002
	bl	__Func_8092c40
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008eec

.thumb_func_start OvlFunc_967_200904c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r1, r7
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r11, r1
	cmp	r3, #0x5a
	bne	.L1072
	ldr	r0, =0x9a7
	bl	__Func_8079358
.L1072:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldrsh	r3, [r7, r2]
	mov	r9, r3
	ldr	r3, =0xb3
	cmp	r9, r3
	bne	.L112a
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r2, #0
	mov	r10, r2
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r0
	add	r2, #0x59
	ldrb	r3, [r2]
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	and	r3, r2
	mov	r2, #8
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r0
	add	r2, #0x59
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x59
	ldrb	r3, [r2]
	orr	r6, r3
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r6, [r2]
	strb	r1, [r3]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	mov	r3, r8
	orr	r5, r3
	strb	r5, [r2, #9]
	mov	r1, #6
	mov	r0, #0xf
	bl	__Func_80924d4
	mov	r3, r11
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, #0xc
	bne	.L112a
	mov	r1, #0xe2
	lsl	r1, #1
	add	r3, r7, r1
	mov	r1, r9
	strh	r1, [r3]
	mov	r1, #0xe3
	lsl	r1, #1
	add	r3, r7, r1
	strh	r2, [r3]
.L112a:
	ldr	r5, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.L11ac
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r2, #0x59
	add	r2, r0
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #4
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x23
	strb	r1, [r3]
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	mov	r0, #0xc0
	strb	r3, [r1, #9]
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L117e
	ldr	r1, =ActorCmd_ARRAY_944__02009314
	mov	r0, #0xe
	bl	__Func_809207c
.L117e:
	mov	r3, #0xe1
	lsl	r3, #1
	add	r5, r3
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x63
	bne	.L11ac
	bl	OvlFunc_967_2008508
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #6
	bl	__Func_8093a6c
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #6
	bl	__Func_8093a6c
	mov	r3, #0x15
	strh	r3, [r5]
.L11ac:
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_967_200904c

	.section .data
	.global gOvl_02009690
	.global .L16b0

	.global ActorCmd_ARRAY_944__02009314
	.global ActorCmd_ARRAY_967__02009314
ActorCmd_ARRAY_944__02009314:
ActorCmd_ARRAY_967__02009314:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1314, (0x1438-0x1314)
	.global gOvl_02009438
gOvl_02009438:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1438, (0x1690-0x1438)
gOvl_02009690:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1690, (0x16b0-0x1690)
.L16b0:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x16b0, (0x16d0-0x16b0)
	.global gOvl_020096d0
gOvl_020096d0:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x16d0, (0x1734-0x16d0)
.L1734:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1734, (0x189c-0x1734)
.L189c:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x189c, (0x1974-0x189c)
.L1974:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1974, (0x1a94-0x1974)
.L1a94:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1a94, (0x1ca4-0x1a94)
	.global gScript_887__02009ca4
gScript_887__02009ca4:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1ca4, (0x1eb4-0x1ca4)
.L1eb4:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1eb4, (0x2010-0x1eb4)
.L2010:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x2010
