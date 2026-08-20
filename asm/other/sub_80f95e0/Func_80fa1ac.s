	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80fa1ac  @ 0x080fa1ac
	mov	r2, #0
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x1a]
	ldrb	r2, [r1, #0x18]
	cmp	r2, #0
	bne	.Lfa1bc
	mov	r2, #0xc
	b	.Lfa1be
.Lfa1bc:
	mov	r2, #3
.Lfa1be:
	ldrb	r3, [r1]
	orr	r3, r2
	strb	r3, [r1]
	bx	lr
.func_end Func_80fa1ac

