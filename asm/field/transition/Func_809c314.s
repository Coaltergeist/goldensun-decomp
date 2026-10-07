	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809c314  @ 0x0809c314
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xf0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	ldr	r2, =0xfec00000
	ldr	r3, [r0, #8]
	add	r2, r3
	mov	r10, r2
	mov	r2, #0xa0
	lsl	r2, #17
	add	r2, r3
	mov	r8, r2
	ldr	r3, [r0, #0x10]
	ldr	r2, =0xfda80000
	add	r7, r3, r2
	mov	r2, #0xc8
	lsl	r2, #17
	add	r6, r3, r2
	mov	r5, #8
.L9c354:
	mov	r0, r5
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L9c382
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x10]
	cmp	r3, r10
	blt	.L9c372
	cmp	r3, r8
	bgt	.L9c372
	cmp	r2, r7
	blt	.L9c372
	cmp	r2, r6
	ble	.L9c37a
.L9c372:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #0
	b	.L9c380
.L9c37a:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
.L9c380:
	strb	r3, [r2]
.L9c382:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L9c354
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809c314

