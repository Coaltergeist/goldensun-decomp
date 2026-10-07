	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f61e8  @ 0x080f61e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0xa0
	lsl	r1, #19
	sub	sp, #0x80
	mov	r8, r1
	bl	GetFile
	ldr	r3, =REG_DMA3SAD
	mov	r1, sp
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0x1f
	ldr	r7, .Lf6218	@ 0x1f
	mov	r14, r2
	mov	r10, r3
	mov	r12, sp
	mov	r6, #0
	b	.Lf6224

	.align	2, 0
.Lf6218:
	.word	0x1f
	.pool

.Lf6224:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r5, r10
	mov	r1, r12
	and	r5, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r6, r1]
	mov	r1, r10
	and	r1, r3
	lsl	r3, #16
	lsr	r4, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r0, r7
	and	r4, r7
	and	r3, r7
	cmp	r5, r1
	bge	.Lf6250
	add	r5, #1
	b	.Lf6256
.Lf6250:
	cmp	r5, r1
	ble	.Lf6256
	sub	r5, #1
.Lf6256:
	cmp	r2, r4
	bge	.Lf625e
	add	r2, #1
	b	.Lf6264
.Lf625e:
	cmp	r2, r4
	ble	.Lf6264
	sub	r2, #1
.Lf6264:
	cmp	r0, r3
	bge	.Lf626c
	add	r0, #1
	b	.Lf6272
.Lf626c:
	cmp	r0, r3
	ble	.Lf6272
	sub	r0, #1
.Lf6272:
	lsl	r2, #5
	lsl	r3, r0, #10
	orr	r3, r2
	orr	r3, r5
	mov	r2, r12
	strh	r3, [r6, r2]
	mov	r3, #1
	add	r14, r3
	mov	r1, #2
	mov	r2, r14
	add	r6, #2
	add	r8, r1
	cmp	r2, #0x40
	bne	.Lf6224
	mov	r0, sp
	ldr	r3, =REG_DMA3SAD
	add	r0, #2
	ldr	r1, =0x5000002
	ldr	r2, =0x8000003f
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f61e8

