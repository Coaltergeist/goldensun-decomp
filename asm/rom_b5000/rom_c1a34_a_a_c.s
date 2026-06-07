	.include "macros.inc"

.thumb_func_start Func_80c2384
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc2390
	ldr	r3, =.Lc7420
	ldrh	r0, [r3]
	b	.Lc2396
.Lc2390:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	ldrh	r0, [r3, r2]
.Lc2396:
	pop	{r1}
	bx	r1
.func_end Func_80c2384

.thumb_func_start Func_80c23a0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ac
	ldr	r3, =.Lc7420
	ldrh	r0, [r3]
	b	.Lc23b8
.Lc23ac:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r0, [r2, #3]
	lsl	r0, #27
	lsr	r0, #28
.Lc23b8:
	pop	{r1}
	bx	r1
.func_end Func_80c23a0

.thumb_func_start Func_80c23c0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ca
	mov	r0, #0
	b	.Lc23de
.Lc23ca:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #31
	mov	r1, #0
	cmp	r3, #0
	beq	.Lc23dc
	mov	r1, #1
.Lc23dc:
	mov	r0, r1
.Lc23de:
	pop	{r1}
	bx	r1
.func_end Func_80c23c0

.thumb_func_start Func_80c23e8
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23f2
	mov	r0, #1
	b	.Lc2406
.Lc23f2:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #27
	lsr	r3, #28
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc2406
	mov	r0, #1
.Lc2406:
	pop	{r1}
	bx	r1
.func_end Func_80c23e8

.thumb_func_start Func_80c2410
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc241a
	mov	r0, #0
	b	.Lc242c
.Lc241a:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsr	r3, #5
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc242c
	mov	r0, #0
.Lc242c:
	pop	{r1}
	bx	r1
.func_end Func_80c2410

.thumb_func_start Func_80c2434
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc243e
	mov	r0, #0
	b	.Lc244a
.Lc243e:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r0, [r2, #3]
	lsl	r0, #31
	lsr	r0, #31
.Lc244a:
	pop	{r1}
	bx	r1
.func_end Func_80c2434

.thumb_func_start Func_80c2454
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc245e
	mov	r0, #0
	b	.Lc2466
.Lc245e:
	lsl	r2, r0, #3
	ldr	r3, =.Lc7420
	add	r2, #4
	ldrb	r0, [r3, r2]
.Lc2466:
	pop	{r1}
	bx	r1
.func_end Func_80c2454

