	.include "macros.inc"

.thumb_func_start OvlFunc_314
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_32c
	ldr	r0, =.L12f8
	bx	lr
.func_end OvlFunc_32c

.thumb_func_start OvlFunc_334
	mov	r0, #0
	bx	lr
.func_end OvlFunc_334

.thumb_func_start OvlFunc_338
	ldr	r0, =.L1358
	bx	lr
.func_end OvlFunc_338

.thumb_func_start OvlFunc_340
	ldr	r0, =.L1368
	bx	lr
.func_end OvlFunc_340

.thumb_func_start OvlFunc_348
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L35c
	ldr	r2, =0xfffff
	add	r3, r2
.L35c:
	ldr	r0, =0x861
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x862
	bl	__Func_79374
	cmp	r5, #0xf
	bne	.L384
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	b	.L3bc
.L384:
	cmp	r5, #0x10
	bne	.L3a2
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	ldr	r0, =0x861
	bl	__Func_79358
	b	.L3bc
.L3a2:
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	ldr	r0, =0x862
	bl	__Func_79358
.L3bc:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_348

.thumb_func_start OvlFunc_3d0
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L3e4
	ldr	r2, =0xfffff
	add	r3, r2
.L3e4:
	asr	r6, r3, #20
	cmp	r6, #0x17
	bne	.L42c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x11
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	ldr	r0, =0x863
	bl	__Func_79358
.L42c:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d0

.thumb_func_start OvlFunc_43c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r5, #0xb
	lsl	r3, #1
	sub	r5, r3
	lsl	r5, #4
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, r5
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	bl	OvlFunc_348
	bl	__Func_9202c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_43c

.thumb_func_start OvlFunc_4cc
	bx	lr
.func_end OvlFunc_4cc

