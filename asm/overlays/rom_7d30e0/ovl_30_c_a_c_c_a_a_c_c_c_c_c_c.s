	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20095f0
	push	{lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L1680
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xa
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1636
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xa
	bl	__Func_8092128
.L1636:
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_8092128
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
.L1680:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095f0

.thumb_func_start OvlFunc_948_2009694
	push	{r5, lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L1790
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	mov	r0, #0xb
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L16d2
	ldr	r2, =0xfffff
	add	r3, r2
.L16d2:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L16e4
	ldr	r2, =0xfffff
	add	r3, r2
.L16e4:
	asr	r3, #20
	cmp	r5, r3
	ble	.L16f4
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809228c
.L16f4:
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1704
	ldr	r2, =0xfffff
	add	r3, r2
.L1704:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1716
	ldr	r2, =0xfffff
	add	r3, r2
.L1716:
	asr	r3, #20
	cmp	r5, r3
	bge	.L1728
	mov	r1, #8
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
.L1728:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1746
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_8092128
.L1746:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xac
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xb
	bl	__Func_8092128
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
.L1790:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009694

.thumb_func_start OvlFunc_948_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L17c2
	ldr	r2, =0xfffff
	add	r3, r2
.L17c2:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r0, #0
	bge	.L17d0
	ldr	r3, =0xfffff
	add	r0, r3
.L17d0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0x24a
	ldr	r5, =ewram_2000240
	ldr	r7, [r3]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r6, r0, #20
	cmp	r3, #0xc
	beq	.L181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L181e
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L181e
	mov	r3, r8
	cmp	r3, #0x13
	bne	.L181e
	mov	r3, r6
	sub	r3, #0xf
	cmp	r3, #1
	bhi	.L181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L181e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20097ac

.thumb_func_start OvlFunc_948_2009838
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1870
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__Func_8092128
.L1870:
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0xc
	bl	__Func_8092128
	mov	r0, #0xc
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009838

