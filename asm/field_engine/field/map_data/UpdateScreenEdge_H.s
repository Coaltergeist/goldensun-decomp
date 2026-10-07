	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdateScreenEdge_H  @ 0x0800ff54
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =0x6002800
	lsl	r0, #11
	add	r3, r0
	mov	r14, r3
	lsr	r3, r2, #31
	add	r3, r2, r3
	mov	r4, #0x7f
	asr	r3, #1
	and	r3, r4
	lsl	r6, r3, #7
	lsr	r3, r1, #31
	mov	r0, #0x1e
	add	r3, r1, r3
	and	r2, r0
	asr	r7, r3, #1
	mov	r9, r1
	lsl	r5, r2, #5
	and	r7, r4
	mov	r2, #1
	mov	r4, r9
	and	r4, r0
	mov	r12, r2
	mov	r3, r12
	mov	r9, r4
	mov	r2, #0xf0
	mov	r4, #0xfe
	and	r3, r1
	lsl	r4, #6
	lsl	r2, #2
	mov	r12, r3
	mov	r0, #0
	mov	r10, r4
	mov	r8, r2
.Lffa0:
	add	r3, r6, r7
	ldr	r4, =gBuffer
	lsl	r3, #2
	add	r3, r4
	ldr	r1, [r3]
	lsl	r1, #20
	lsr	r1, #18
	ldr	r3, =ewram_2020000
	add	r1, r12
	lsl	r1, #1
	mov	r4, r9
	add	r2, r1, r3
	add	r3, r5, r4
	add	r3, r12
	ldrh	r2, [r2]
	lsl	r3, #1
	add	r3, r14
	ldr	r4, =ewram_2020004
	strh	r2, [r3]
	add	r2, r1, r4
	ldrh	r2, [r2]
	add	r3, #0x40
	strh	r2, [r3]
	add	r6, #0x80
	mov	r2, r10
	add	r5, #0x40
	mov	r3, r8
	add	r0, #1
	and	r6, r2
	and	r5, r3
	cmp	r0, #0xa
	bls	.Lffa0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UpdateScreenEdge_H
