	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0x8e
	ldr	r6, [r3]
	ldr	r3, =ewram_240
	lsl	r2, #2
	add	r7, r3, r2
	mov	r3, #0xd6
	lsl	r3, #1
	add	r5, r6, r3
	ldr	r3, [r5]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, [r7]
	cmp	r3, r0
	blt	.L7a
	bl	__Func_4458
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r0, r2
	bcs	.L76
	ldr	r0, =0x808
	mov	r1, #3
	bl	__Func_91f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
	b	.L7a
.L76:
	ldr	r3, [r5]
	str	r3, [r7]
.L7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_8c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, =ewram_240
	mov	r2, #0x8e
	lsl	r2, #2
	ldr	r6, [r3]
	add	r5, r2
	sub	r2, #0x8c
	add	r3, r6, r2
	ldr	r3, [r3]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, [r5]
	cmp	r3, r0
	blt	.Lc2
	ldr	r0, =0x809
	mov	r1, #0x2a
	bl	__Func_91f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
.Lc2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8c

.thumb_func_start OvlFunc_d4
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, =ewram_240
	mov	r2, #0x8e
	lsl	r2, #2
	ldr	r6, [r3]
	add	r5, r2
	sub	r2, #0x8c
	add	r3, r6, r2
	ldr	r3, [r3]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, [r5]
	cmp	r3, r0
	blt	.L10a
	ldr	r0, =0x80a
	mov	r1, #0x18
	bl	__Func_91f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
.L10a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d4

.thumb_func_start OvlFunc_11c
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	ldrh	r1, [r2]
	cmp	r3, #0
	bgt	.L132
	add	r3, r1, #1
	strh	r3, [r2]
	b	.L136
.L132:
	bl	__Func_c0f4
.L136:
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c

.thumb_func_start OvlFunc_13c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L14e
	ldr	r3, =0x14ccc
	b	.L152
.L14e:
	mov	r3, #0x80
	lsl	r3, #9
.L152:
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1ac
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r6, r0
	mov	r0, #0xf6
	bl	__Func_f9080
	cmp	r6, #0
	beq	.L1ac
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r6
	add	r3, #0x64
	strh	r5, [r3]
	ldr	r3, =OvlFunc_11c
	str	r3, [r6, #0x6c]
.L1ac:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13c

.thumb_func_start OvlFunc_1c4
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L1dc
	mov	r1, #0xa
	bl	__Func_c598
	b	.L1e4
.L1dc:
	mov	r0, r6
	mov	r1, #7
	bl	__Func_c598
.L1e4:
	mov	r3, r6
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L23c
	ldr	r3, =0x15d00000
	mov	r5, r6
	str	r3, [r6, #8]
	add	r5, #0x64
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	lsl	r0, #3
	bl	__Func_2322
	mov	r1, #0x80
	ldr	r3, =Func_888
	lsl	r1, #11
	.call_via r3
	mov	r4, #0x80
	lsl	r4, #13
	mov	r3, #0xa6
	add	r0, r4
	lsl	r3, #19
	str	r0, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r2, #0
	ldrsh	r1, [r5, r2]
	mov	r2, r6
	add	r2, #8
	mov	r0, r4
	bl	__Func_447c
	ldrh	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r2
	strh	r3, [r6, #6]
	mov	r2, #0x80
	ldrh	r3, [r5]
	lsl	r2, #3
	add	r3, r2
	strh	r3, [r5]
.L23c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4

.thumb_func_start OvlFunc_250
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x30
	bl	__Func_79338
	cmp	r0, #0
	bne	.L284
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L284
	ldr	r3, =OvlFunc_1c4
	str	r3, [r5, #0x6c]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	add	r3, #0xf
	strh	r0, [r3]
	add	r3, #2
	strh	r0, [r3]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
.L284:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_250

.thumb_func_start OvlFunc_290
	ldr	r0, =.L527c
	bx	lr
.func_end OvlFunc_290

