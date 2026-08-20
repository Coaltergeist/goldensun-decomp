	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1a40  @ 0x080a1a40
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	ldr	r3, =iwram_3001e40
	mov	r14, r3
	ldr	r3, [r3]
	mov	r6, #7
	lsr	r3, #1
	mov	r12, r6
	and	r3, r6
	ldr	r2, =.Laf294
	ldr	r6, [r5, #0x10]
	ldrb	r2, [r2, r3]
	ldrh	r3, [r6, #0xc]
	add	r2, r0
	lsl	r3, #3
	ldr	r4, [r5, #0x14]
	add	r2, r3
	ldr	r5, .La1a9c	@ 0xffff
	add	r2, #8
	ldr	r3, .La1aa0	@ 0x1ff
	strh	r2, [r4, #6]
	and	r2, r5
	ldrh	r0, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r0
	orr	r3, r2
	mov	r0, r14
	strh	r3, [r4, #0x16]
	ldr	r3, [r0]
	ldr	r2, =.Laf29d
	mov	r0, r12
	lsr	r3, #1
	and	r3, r0
	ldrb	r3, [r2, r3]
	ldrh	r2, [r6, #0xe]
	add	r3, r1
	lsl	r2, #3
	add	r3, r2
	add	r3, #8
	strh	r3, [r4, #8]
	and	r3, r5
	strb	r3, [r4, #0x14]
	b	.La1ab8

	.align	2, 0
.La1a9c:
	.word	0xffff
.La1aa0:
	.word	0x1ff
	.pool

.La1ab8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a1a40

