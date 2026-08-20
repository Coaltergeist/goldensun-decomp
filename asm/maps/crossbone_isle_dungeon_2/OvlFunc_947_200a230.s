	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a230
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #2
	and	r7, r3
	sub	sp, #0x38
	cmp	r7, #0
	bne	.Lm947_22bc
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_2250
	mov	r0, #0x88
	bl	__PlaySound
.Lm947_2250:
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x19999
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	bl	__Random
	ldr	r3, =0xffff000
	and	r3, r0
	strh	r3, [r6, #0x20]
	ldr	r3, =OvlFunc_947_20093b0
	str	r3, [r6, #0x24]
	bl	__Random
	lsl	r5, r0, #2
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r5, #16
	add	r5, r2
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, #0xa0
	lsl	r2, #11
	lsl	r3, #16
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0x14d0000
	asr	r5, #1
	mov	r0, #0xa2
	mov	r1, #0xc0
	mov	r2, #0xe4
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm947_22bc:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a230

