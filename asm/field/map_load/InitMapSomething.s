	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitMapSomething  @ 0x0808a5f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r8, r0
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x14]
	bl	_call_via_r0
	ldr	r1, =0x3e7
	mov	r2, #0
	mov	r6, r0
	mov	r9, r2
	cmp	r8, r1
	beq	.L8a6bc
	ldmia	r6!, {r5}
	ldr	r3, =0xfffff000
	and	r3, r5
	cmp	r3, #0
	bne	.L8a68e
	ldr	r3, =0xfff
	and	r5, r3
	ldr	r3, =0x1ff
	cmp	r5, r3
	beq	.L8a6a2
.L8a638:
	cmp	r5, r7
	bne	.L8a68e
	mov	r10, r6
	b	.L8a65a
.L8a640:
	cmp	r2, #0xff
	beq	.L8a648
	cmp	r2, r8
	bne	.L8a65a
.L8a648:
	cmp	r0, #0
	beq	.L8a654
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8a65a
.L8a654:
	mov	r1, r5
	mov	r9, r7
	b	.L8a6a2
.L8a65a:
	ldmia	r6!, {r3}
	mov	r2, #0xff
	lsl	r2, #12
	and	r2, r3
	lsr	r7, r2, #12
	mov	r0, #0x80
	mov	r2, #0xff
	ldr	r5, =0xfff
	lsl	r2, #20
	lsl	r0, #21
	and	r2, r3
	and	r0, r3
	and	r5, r3
	lsr	r2, #20
	cmp	r0, #0
	beq	.L8a67c
	ldmia	r6!, {r0}
.L8a67c:
	ldr	r3, =0x1ff
	cmp	r5, r3
	beq	.L8a686
	cmp	r2, #0
	bne	.L8a640
.L8a686:
	mov	r0, r10
	ldr	r1, [r0]
	and	r1, r3
	b	.L8a6a2
.L8a68e:
	ldmia	r6!, {r5}
	ldr	r3, =0xfffff000
	and	r3, r5
	cmp	r3, #0
	bne	.L8a68e
	ldr	r3, =0xfff
	ldr	r2, =0x1ff
	and	r5, r3
	cmp	r5, r2
	bne	.L8a638
.L8a6a2:
	ldr	r3, =0x3e7
	cmp	r1, r3
	beq	.L8a6bc
	ldr	r2, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r9
	strh	r2, [r3]
.L8a6bc:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitMapSomething

