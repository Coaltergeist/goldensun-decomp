	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ab21c  @ 0x080ab21c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r3
	ldr	r3, =iwram_3001e8c
	mov	r4, r0
	mov	r0, r1
	ldr	r1, [sp, #0x24]
	ldr	r3, [r3]
	mov	r10, r1
	mov	r9, r3
	mov	r3, r10
	lsl	r3, #12
	mov	r7, r2
	mov	r10, r3
	cmp	r4, #0
	bge	.Lab24c
	add	r7, r4
	mov	r4, #0
.Lab24c:
	add	r3, r4, r7
	cmp	r3, #0x1d
	ble	.Lab256
	mov	r3, #0x1e
	sub	r7, r3, r4
.Lab256:
	cmp	r0, #0
	bge	.Lab25e
	add	r5, r0
	mov	r0, #0
.Lab25e:
	add	r3, r0, r5
	cmp	r3, #0x1d
	ble	.Lab268
	mov	r3, #0x14
	sub	r5, r3, r0
.Lab268:
	cmp	r7, #0
	ble	.Lab2ce
	cmp	r5, #0
	ble	.Lab2ce
	ldr	r6, =0xea3
	lsl	r2, r0, #6
	lsl	r3, r4, #1
	add	r2, r3
	add	r6, r9
	mov	r1, #2
	str	r2, [sp]
	mov	r8, r6
	mov	r11, r1
.Lab282:
	ldr	r4, [sp]
	mov	r1, r7
	add	r4, r9
	cmp	r1, #0
	beq	.Lab2b2
	ldr	r6, =0xffff0fff
	mov	r3, #0xf
	mov	r14, r3
	mov	r12, r6
.Lab294:
	ldrh	r2, [r4]
	mov	r6, r14
	lsr	r3, r2, #12
	and	r3, r6
	cmp	r3, #0xf
	bne	.Lab2aa
	mov	r3, r12
	and	r2, r3
	mov	r6, r10
	orr	r2, r6
	strh	r2, [r4]
.Lab2aa:
	sub	r1, #1
	add	r4, #2
	cmp	r1, #0
	bne	.Lab294
.Lab2b2:
	lsr	r3, r0, #2
	mov	r1, r8
	mov	r2, r11
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
	sub	r5, #1
	ldr	r3, [sp]
	add	r3, #0x40
	str	r3, [sp]
	add	r0, #1
	cmp	r5, #0
	bne	.Lab282
.Lab2ce:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ab21c
