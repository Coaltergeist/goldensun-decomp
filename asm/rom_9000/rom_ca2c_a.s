	.include "macros.inc"

.thumb_func_start ActorCmd_SetScript  @ 0x0800ca2c
	mov	r3, #4
	ldrsh	r2, [r0, r3]
	ldr	r3, [r0]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	str	r3, [r0]
	mov	r3, #0
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end  ActorCmd_SetScript

