	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SoundMainBTM  @ 0x080f9a18
	mov	r12, r4
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	mov	r4, r12
	bx	lr
.func_end SoundMainBTM

