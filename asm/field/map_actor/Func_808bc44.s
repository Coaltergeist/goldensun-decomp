	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808bc44  @ 0x0808bc44
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xb6
	ldr	r1, [r3]
	lsl	r0, #1
	mov	r2, #0
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	strh	r2, [r3]
	bx	lr
.func_end Func_808bc44
