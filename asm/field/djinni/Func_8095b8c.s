	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095b8c  @ 0x08095b8c
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #2
	ldr	r1, =gScript_0809f0a4
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bx	lr
.func_end Func_8095b8c
