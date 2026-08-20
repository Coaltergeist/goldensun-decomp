	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetFlagNybble  @ 0x08079418
	lsl	r3, r0, #20
	mov	r1, #4
	and	r1, r0
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	mov	r2, #0xf
	ldrb	r0, [r3, r0]
	lsl	r2, r1
	and	r0, r2
	asr	r0, r1
	bx	lr
.func_end GetFlagNybble

