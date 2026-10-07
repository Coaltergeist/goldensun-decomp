	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011164  @ 0x08011164
	push	{r5, lr}
	lsr	r3, r0, #31
	add	r3, r0, r3
	mov	r2, #0x1f
	asr	r3, #1
	and	r3, r2
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r4, r3, r2
	ldr	r5, =0x6004000
	mov	r3, #0x3e
	and	r3, r0
	add	r1, r3, r5
	mov	r0, #0
.L11180:
	ldrh	r2, [r4]
	ldr	r5, =gBuffer
	lsl	r2, #2
	add	r3, r2, r5
	ldrh	r3, [r3]
	add	r5, #2
	strh	r3, [r1]
	add	r3, r2, r5
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #0x80
	add	r4, #0x80
	cmp	r0, #0x3f
	bls	.L11180
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8011164
