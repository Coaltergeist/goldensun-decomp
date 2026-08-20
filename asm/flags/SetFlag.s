	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetFlag  @ 0x08079358
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	ldr	r1, =gFlags
	lsl	r2, r3
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldrb	r3, [r1, r0]
	orr	r2, r3
	strb	r2, [r1, r0]
	bx	lr
.func_end SetFlag

