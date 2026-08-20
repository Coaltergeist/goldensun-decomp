	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017c1c  @ 0x08017c1c
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	mov	r5, r1
	mov	r7, r2
	ldr	r4, [r3]
	cmp	r0, #0
	bne	.L17c4a
	ldr	r3, =0x12b2
	add	r1, r4, r3
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, #1
	add	r3, r2
	add	r0, r4, r2
	ldr	r2, .L17c6c	@ 0
	strh	r2, [r4, r3]
	ldrh	r3, [r1]
	ldr	r2, .L17c70	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
.L17c4a:
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r6
	add	r3, #1
	lsl	r3, #5
	add	r2, r7
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L17c84
	ldr	r3, =0x6002000
	lsl	r1, #1
	add	r2, r1, r3
	add	r1, r4, r1
	b	.L17c80

	.align	2, 0
.L17c6c:
	.word	0
.L17c70:
	.word	0x1ff
	.pool

.L17c80:
	bl	Func_801de5c
.L17c84:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017c1c

