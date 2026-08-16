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

.thumb_stub __divsi3, divsi3_RAM, r3
.thumb_stub __udivsi3, udivsi3_RAM, r3
.thumb_stub __modsi3, modsi3_RAM, r3
.thumb_stub __umodsi3, umodsi3_RAM, r3

.L230c:
.thumb
	lsr	r2, r0, #14
	mov	r0, #1
	and	r0, r2
	lsl	r0, #16
	lsr	r2, #2
	bcc	.L231a
	neg	r0, r0
.L231a:
	bx	lr

.thumb_func_start_noalign cos
	mov	r1, #0x40
	lsl	r1, #8
	add	r0, r1

.thumb_func_start_noalign sin
sin:
	add	r0, #0x20
	lsl	r1, r0, #18
	lsr	r1, #24
	beq	.L230c
	lsr	r2, r0, #15
	bcc	.L2334
	mov	r3, #0x80
	lsl	r3, #1
	sub	r1, r3, r1
.L2334:
	lsl	r1, #1
	adr	r3, .L2344
	ldrh	r0, [r3, r1]
	lsr	r2, #1
	bcc	.L2342
	neg	r0, r0
	bx	lr
.L2342:
	bx	lr

.L2344:
	.incrom 0x2344, 0x2544
