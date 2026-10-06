	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MP2K_event_lfos  @ 0x080fa1d4
	mov	r12, lr
	bl	Func_80fa1c8
	strb	r3, [r1, #0x19]
	cmp	r3, #0
	bne	.Lfa1e4
	bl	Func_80fa1ac
.Lfa1e4:
	bx	r12
.func_end MP2K_event_lfos

