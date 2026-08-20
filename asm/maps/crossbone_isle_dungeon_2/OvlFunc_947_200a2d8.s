	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a2d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	mov	r5, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r7, #0
	bne	.Lm947_2368
	add	r2, sp, #0x10
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r10, r2
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #8
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r6, [r5, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, =0x90001
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.Lm947_2368:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_200a2d8

