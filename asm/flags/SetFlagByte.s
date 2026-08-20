	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetFlagByte  @ 0x080793c8
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	strb	r1, [r3, r0]
	bx	lr
.func_end SetFlagByte

