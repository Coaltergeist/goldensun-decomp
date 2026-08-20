	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd418  @ 0x080cd418
	ldr	r3, =iwram_3001eec
	ldr	r0, =0x77bc
	ldr	r2, [r3]
	add	r3, r2, r0
	ldrh	r3, [r3]
	ldr	r1, =REG_WIN0H
	add	r0, #2
	strh	r3, [r1]
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #4
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	sub	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #4
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	sub	r1, #0x4a
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #0x50
	strh	r3, [r1]
	ldr	r3, =0x77cc
	add	r2, r3
	ldrh	r3, [r2]
	add	r1, #2
	strh	r3, [r1]
	bx	lr
.func_end Func_80cd418

