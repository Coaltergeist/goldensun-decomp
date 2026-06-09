	.include "macros.inc"

.thumb_func_start SetDestMap  @ 0x08091e3c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe0
	strh	r2, [r3]
	ldr	r2, =gState
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end SetDestMap

.thumb_func_start SetRespawnMap  @ 0x08091e6c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe2
	strh	r2, [r3]
	ldr	r2, =gState
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe3
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end SetRespawnMap

