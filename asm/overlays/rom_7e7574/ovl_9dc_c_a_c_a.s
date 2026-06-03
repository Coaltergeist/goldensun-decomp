	.include "macros.inc"

.thumb_func_start OvlFunc_959_200969c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x85
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_959_2009660
	cmp	r0, #0
	bne	.L16f4
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L16de
	mov	r0, #0x11
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L16de
	ldr	r0, =0x215
	bl	__Func_8079358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079358
.L16de:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16f4
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5e
	strh	r3, [r2]
.L16f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200969c

.thumb_func_start OvlFunc_959_2009708
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_959_2009b24
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009708

.thumb_func_start OvlFunc_959_2009718
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L1748
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1748
	ldr	r0, =OvlFunc_959_2009718
	bl	__Func_8004278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5f
	strh	r3, [r2]
.L1748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009718

.thumb_func_start OvlFunc_959_200975c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L17a2
	mov	r0, #0xd
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L17a2
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L17a2
	ldr	r0, =0x225
	bl	__Func_8079358
	ldr	r0,=OvlFunc_959_200975c
	bl	__Func_8004278
	ldr	r0, =OvlFunc_959_20097bc
	bl	__Func_8004278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L17a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200975c

.thumb_func_start OvlFunc_959_20097bc
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1802
	mov	r0, #0x15
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L1802
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1802
	ldr	r0, =0x225
	bl	__Func_8079358
	ldr	r0, =OvlFunc_959_20097bc
	bl	__Func_8004278
	ldr	r0, =OvlFunc_959_200975c
	bl	__Func_8004278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L1802:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20097bc

.thumb_func_start OvlFunc_959_200981c
	push	{r5, r6, lr}
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L1836
	ldr	r2, =0xfffff
	add	r3, r2
.L1836:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1842
	ldr	r3, =0xfffff
	add	r0, r3
.L1842:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L184e
	ldr	r3, =0xfffff
	add	r2, r3
.L184e:
	ldr	r0, [r1, #8]
	asr	r3, r2, #20
	cmp	r0, #0
	bge	.L185a
	ldr	r2, =0xfffff
	add	r0, r2
.L185a:
	sub	r3, r6, r3
	add	r3, #6
	asr	r0, #20
	cmp	r3, #0xc
	bhi	.L1874
	sub	r3, r4, #1
	cmp	r3, r0
	bge	.L1874
	add	r3, r4, #1
	cmp	r3, r0
	ble	.L1874
	mov	r0, #1
	b	.L1876
.L1874:
	mov	r0, #0
.L1876:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_200981c

.thumb_func_start OvlFunc_959_2009880
	push	{r5, r6, lr}
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L189a
	ldr	r2, =0xfffff
	add	r3, r2
.L189a:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L18a6
	ldr	r3, =0xfffff
	add	r0, r3
.L18a6:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L18b2
	ldr	r3, =0xfffff
	add	r2, r3
.L18b2:
	ldr	r0, [r1, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L18be
	ldr	r3, =0xfffff
	add	r0, r3
.L18be:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r3, #6
	mov	r0, #0
	cmp	r3, #0xc
	bhi	.L18da
	sub	r3, r6, #2
	cmp	r3, r2
	bge	.L18d8
	add	r3, r6, #2
	mov	r0, #1
	cmp	r3, r2
	bgt	.L18da
.L18d8:
	mov	r0, #0
.L18da:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009880

