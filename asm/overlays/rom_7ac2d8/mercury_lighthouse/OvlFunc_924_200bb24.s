	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200bb24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r8, r3
	mov	r11, r2
	mov	r3, #3
	mov	r2, r8
	and	r2, r3
	sub	sp, #0x38
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	cmp	r2, #0
	bne	.Lm924_3bb4
	mov	r3, #7
	add	r7, sp, #0x10
	str	r3, [r7, #4]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	bne	.Lm924_3b66
	mov	r3, #5
	str	r3, [r7, #4]
.Lm924_3b66:
	ldr	r3, =0xb333
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r6, =0xffff3334
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r6
	str	r3, [sp, #8]
	mov	r0, r10
	mov	r1, r9
	mov	r2, r11
	mov	r3, r5
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm924_3bb4:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200bb24

