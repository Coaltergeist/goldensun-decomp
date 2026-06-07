	.include "macros.inc"

.thumb_func_start OvlFunc_common2_618
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0, #4]
	sub	sp, #8
	mov	r2, sp
	str	r4, [r2]
	ldr	r3, [r0]
	str	r3, [r2, #4]
	lsl	r3, #12
	lsr	r6, r3, #12
	ldrh	r3, [r2, #6]
	lsl	r3, #17
	mov	r7, r1
	lsr	r1, r3, #21
	ldrb	r3, [r2, #7]
	lsr	r3, #7
	mov	r5, r4
	str	r3, [r7, #4]
	cmp	r1, #0
	bne	.L684
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L64c
	mov	r3, #2
	str	r3, [r7]
	b	.L6d0
.L64c:
	ldr	r3, =0xfffffc02
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	str	r3, [r7, #8]
	orr	r4, r2
	lsl	r3, r5, #8
	mov	r6, r4
	mov	r5, r3
	mov	r3, #3
	str	r3, [r7]
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bhi	.L6ac
	mov	r12, r3
.L66a:
	lsr	r1, r5, #31
	lsl	r2, r6, #1
	mov	r4, r1
	lsl	r3, r5, #1
	orr	r4, r2
	mov	r6, r4
	mov	r5, r3
	ldr	r3, [r7, #8]
	sub	r3, #1
	str	r3, [r7, #8]
	cmp	r6, r12
	bls	.L66a
	b	.L6ac
.L684:
	ldr	r2, =0x7ff
	cmp	r1, r2
	bne	.L6b2
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L698
	mov	r3, #4
	str	r3, [r7]
	b	.L6d0
.L698:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r4, r6
	mov	r3, #0
	and	r4, r2
	orr	r3, r4
	cmp	r3, #0
	beq	.L6aa
	mov	r3, #1
.L6aa:
	str	r3, [r7]
.L6ac:
	str	r5, [r7, #0xc]
	str	r6, [r7, #0x10]
	b	.L6d0
.L6b2:
	ldr	r2, =0xfffffc01
	add	r3, r1, r2
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	orr	r4, r2
	ldr	r1, =0
	ldr	r2, =0x10000000
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7]
	orr	r4, r2
	lsl	r3, r5, #8
	str	r3, [r7, #0xc]
	str	r4, [r7, #0x10]
.L6d0:
	add	sp, #8
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_618

	.section .data
	.global .L1

.L1:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1888, (0x189c-0x1888)
