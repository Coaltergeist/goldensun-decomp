	.include "macros.inc"

.thumb_func_start GetFlag  @ 0x08079338
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	lsl	r2, r3
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	ldrb	r3, [r3, r0]
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	bx	lr
.func_end GetFlag

.thumb_func_start SetFlag  @ 0x08079358
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	ldr	r1, =gFlags
	lsl	r2, r3
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldrb	r3, [r1, r0]
	orr	r2, r3
	strb	r2, [r1, r0]
	bx	lr
.func_end SetFlag

.thumb_func_start ClearFlag  @ 0x08079374
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	lsl	r2, r3
	ldr	r1, =gFlags
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldrb	r3, [r1, r0]
	bic	r3, r2
	strb	r3, [r1, r0]
	bx	lr
.func_end ClearFlag

