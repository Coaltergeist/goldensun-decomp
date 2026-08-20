	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_2008d74
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, =iwram_3001e8c
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__alloc_ewram
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r2, =0x6002000
	lsl	r3, #1
	mov	r7, r0
	mov	r5, #0
	ldr	r0, .Lda4	@ 0xfffff000
	add	r1, r3, r2
	add	r6, r3
	mov	r12, r5
.Ld9c:
	mov	r2, r12
	add	r2, #0x20
	mov	r4, #0xf
	b	.Ldb0

	.align	2, 0
.Lda4:
	.word	0xfffff000
	.pool

.Ldb0:
	mov	r3, r2
	orr	r3, r0
	lsl	r3, #16
	asr	r3, #16
	sub	r4, #1
	strh	r3, [r1]
	add	r2, #1
	strh	r3, [r6]
	add	r1, #2
	add	r6, #2
	cmp	r4, #0
	bge	.Ldb0
	mov	r3, #0x10
	add	r5, #1
	add	r1, #0x20
	add	r6, #0x20
	add	r12, r3
	cmp	r5, #7
	ble	.Ld9c
	mov	r0, r7
	bl	__free
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_880_2008d74

