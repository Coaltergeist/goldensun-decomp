	.include "macros.inc"

.arm_func_start DecompressLZ16_ROM  @ 0x08002298
	mov	r3, #0x80000000
	b	.L22a4
.L22a0:
	strh	r2, [r1], #2
.L22a4:
	lsls	r3, #1
.L22a8:
	ldrh	r2, [r0], #2
	bcc	.L22a0
	bne	.L22c0
	adc	r3, r2, r2
	lsls	r3, #16
	b	.L22a8
.L22c0:
	cmp	r2, #0
	bxeq	lr
	sub	r12, r1, r2, lsr #5
	sub	r12, r2, lsr #5
	and	r2, #0x1f
	add	r2, #2
.L22d8:
	ldrh	r4, [r12], #2
	strh	r4, [r1], #2
	subs	r2, #1
	bne	.L22d8
	b	.L22a4
.func_end_emit_size DecompressLZ16_ROM, _DECOMPRESS_LZ16_SIZE
