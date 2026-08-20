	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start RealClearChain  @ 0x080f9a30
	ldr	r3, [r0, #0x2c]
	cmp	r3, #0
	beq	.Lf9a4e
	ldr	r1, [r0, #0x34]
	ldr	r2, [r0, #0x30]
	cmp	r2, #0
	beq	.Lf9a42
	str	r1, [r2, #0x34]
	b	.Lf9a44
.Lf9a42:
	str	r1, [r3, #0x20]
.Lf9a44:
	cmp	r1, #0
	beq	.Lf9a4a
	str	r2, [r1, #0x30]
.Lf9a4a:
	mov	r1, #0
	str	r1, [r0, #0x2c]
.Lf9a4e:
	bx	lr
.func_end RealClearChain

