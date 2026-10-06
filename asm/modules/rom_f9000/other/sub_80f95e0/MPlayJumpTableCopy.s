	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MPlayJumpTableCopy  @ 0x080f9a80
	mov	r12, lr
	mov	r1, #0x24
	ldr	r2, .Lf9ab0	@ .Lfb7a0
.Lf9a86:
	ldr	r3, [r2]
	bl	.Lf9a9a
	stmia	r0!, {r3}
	add	r2, #4
	sub	r1, #1
	bgt	.Lf9a86
	bx	r12
.func_end MPlayJumpTableCopy

