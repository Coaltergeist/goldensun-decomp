	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80173ac  @ 0x080173ac
	ldr	r3, =iwram_3001e8c
	ldr	r2, [r3]
	ldr	r3, =0xeae
	add	r1, r2, r3
	mov	r3, #0xf
	strh	r3, [r1]
	ldr	r3, =0xea8
	add	r1, r2, r3
	mov	r3, #0xa
	strh	r3, [r1]
	ldr	r3, =0x12b0
	add	r1, r2, r3
	mov	r3, #9
	strh	r3, [r1]
	ldr	r1, =0xeac
	mov	r0, #0
	add	r3, r2, r1
	strh	r0, [r3]
	ldr	r3, =0xeaa
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bx	lr
.func_end Func_80173ac

