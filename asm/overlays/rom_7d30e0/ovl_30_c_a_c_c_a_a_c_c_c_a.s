	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009120
	push	{r5, lr}
	mov	r0, #2
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1152
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L1152
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L1152:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009120

.thumb_func_start OvlFunc_948_200915c
	push	{r5, lr}
	mov	r0, #3
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L118e
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L118e
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L118e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200915c

.thumb_func_start OvlFunc_948_2009198
	push	{lr}
	sub	sp, #8
	mov	r3, #0x19
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
	ldr	r0, =0xeeb
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L11c8
	mov	r1, #0xcc
	mov	r2, #0xc2
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
.L11c8:
	mov	r0, #1
	bl	__Func_809163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009198

.thumb_func_start OvlFunc_948_20091d8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x19
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x30
	mov	r2, #1
	bl	__Func_80105d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #12
	lsl	r2, #12
	bl	__Func_80923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20091d8

.thumb_func_start OvlFunc_948_2009204
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee7
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009204

.thumb_func_start OvlFunc_948_2009238
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee8
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009238

.thumb_func_start OvlFunc_948_200926c
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee9
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200926c

.thumb_func_start OvlFunc_948_20092a0
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xeea
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20092a0

.thumb_func_start OvlFunc_948_20092d4
	push	{lr}
	mov	r0, #0xf3
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf3
	bl	__Func_8091a58
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xeeb
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20092d4

.thumb_func_start OvlFunc_948_2009308
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L131a
	ldr	r1, =0xfffff
	add	r3, r1
.L131a:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1326
	ldr	r2, =0xfffff
	add	r0, r2
.L1326:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r7, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1376
	ldr	r2, =ewram_2000240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1376
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L1376
	mov	r3, r6
	sub	r3, #0x15
	cmp	r3, #2
	bhi	.L1376
	cmp	r5, #9
	ble	.L1376
	cmp	r5, #0xb
	bgt	.L1376
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1376:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009308

.thumb_func_start OvlFunc_948_200938c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_8092064
	mov	r0, #8
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L13c4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_8092128
.L13c4:
	mov	r0, #8
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
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #8
	bl	__Func_8092128
	mov	r0, #8
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200938c

.thumb_func_start OvlFunc_948_200941c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L142e
	ldr	r1, =0xfffff
	add	r3, r1
.L142e:
	ldr	r0, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r0, #0
	bge	.L143a
	ldr	r2, =0xfffff
	add	r0, r2
.L143a:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1486
	ldr	r2, =ewram_2000240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1486
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.L1486
	cmp	r7, #0xa
	bne	.L1486
	mov	r3, r5
	sub	r3, #0x10
	cmp	r3, #2
	bhi	.L1486
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x5c
	strh	r3, [r2]
.L1486:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200941c

.thumb_func_start OvlFunc_948_200949c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L14d4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__Func_8092128
.L14d4:
	mov	r0, #9
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0x84
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200949c

.thumb_func_start OvlFunc_948_200952c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r1, [r0, #8]
	cmp	r1, #0
	bge	.L1546
	ldr	r2, =0xfffff
	add	r1, r2
.L1546:
	ldr	r0, [r0, #0x10]
	asr	r6, r1, #20
	cmp	r0, #0
	bge	.L1552
	ldr	r3, =0xfffff
	add	r0, r3
.L1552:
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r5, r7
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r0, #20
	add	r5, #0xa
	mov	r10, r0
	cmp	r3, r5
	beq	.L15b0
	ldr	r3, =.L2f74
	lsl	r7, #2
	mov	r8, r3
	ldr	r3, [r3, r7]
	cmp	r6, r3
	beq	.L15b0
	mov	r1, #0x90
	mov	r2, #0x90
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r5
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	lsl	r1, r6, #4
	mov	r2, #0xb4
	lsl	r2, #1
	add	r1, #8
	mov	r0, r5
	bl	__Func_8092128
	mov	r2, r8
	mov	r3, r10
	str	r6, [r2, r7]
	cmp	r3, #0x16
	bgt	.L15aa
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_809228c
.L15aa:
	mov	r0, #0
	bl	__Func_80923c4
.L15b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200952c

