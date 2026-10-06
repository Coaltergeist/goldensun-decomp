	.include "macros.inc"

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
