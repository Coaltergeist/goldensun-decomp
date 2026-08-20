	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f9f3c  @ 0x080f9f3c
	ldrb	r1, [r4, #0x12]
	mov	r0, #0x14
	ldrsb	r2, [r4, r0]
	mov	r3, #0x80
	add	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x10]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f54
	mov	r0, #0xff
.Lf9f54:
	strb	r0, [r4, #2]
	mov	r3, #0x7f
	sub	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x11]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f68
	mov	r0, #0xff
.Lf9f68:
	strb	r0, [r4, #3]
	bx	lr
.func_end Func_80f9f3c

