	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MP2K_event_mod  @ 0x080fa1e8
	mov	r12, lr
	bl	Func_80fa1c8
	strb	r3, [r1, #0x17]
	cmp	r3, #0
	bne	.Lfa1f8
	bl	Func_80fa1ac
.Lfa1f8:
	bx	r12
.func_end MP2K_event_mod

