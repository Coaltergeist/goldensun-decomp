	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808a5f8
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
.func_end Func_808a5f8

.thumb_func_start RespawnAtSanctum
	push	{r5, r6, lr}
	ldr	r1, =gState
	ldr	r2, =0x236
	mov	r4, #1
	add	r3, r1, r2
	neg	r4, r4
	strh	r0, [r3]
	cmp	r0, r4
	beq	.L8a6f8
	b	.L8a846
.L8a6f8:
	mov	r4, #0xfa
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r0, [r3]
	bl	_GetUnit
	mov	r6, r0
	mov	r5, #0x38
	ldrsh	r3, [r6, r5]
	cmp	r3, #0
	bne	.L8a774
	mov	r5, #1
	strh	r5, [r6, #0x38]
	lsl	r5, #14
	mov	r0, #0x34
	ldrsh	r1, [r6, r0]
	mov	r0, r5
	bl	Func_af0_from_thumb
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r0, r1
	bgt	.L8a72e
	mov	r5, #0
	cmp	r0, #0
	blt	.L8a72e
	mov	r5, r0
.L8a72e:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L8a742
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L8a742
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L8a742:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r4, #0x36
	ldrsh	r1, [r6, r4]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a760
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a760
	mov	r3, r0
.L8a760:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a774
	mov	r5, #0x3a
	ldrsh	r3, [r6, r5]
	cmp	r3, #0
	beq	.L8a774
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L8a774:
	mov	r0, #0x20
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8a7f6
	mov	r5, #0
.L8a780:
	mov	r0, r5
	bl	_GetUnit
	mov	r6, r0
	ldrh	r1, [r6, #0x34]
	ldrh	r3, [r6, #0x36]
	strh	r1, [r6, #0x38]
	strh	r3, [r6, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a7aa
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a7aa
	mov	r3, r0
.L8a7aa:
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a7be
	mov	r0, #0x38
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	beq	.L8a7be
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L8a7be:
	mov	r1, #0x3a
	ldrsh	r0, [r6, r1]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a7dc
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a7dc
	mov	r3, r0
.L8a7dc:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a7f0
	mov	r4, #0x3a
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8a7f0
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L8a7f0:
	add	r5, #1
	cmp	r5, #1
	ble	.L8a780
.L8a7f6:
	ldr	r1, =gState
	mov	r5, #0xe9
	lsl	r5, #1
	mov	r4, #0xea
	add	r3, r1, r5
	lsl	r4, #1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	add	r3, r1, r4
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	bne	.L8a836
	cmp	r0, r2
	bne	.L8a83e
	sub	r4, #0x10
	add	r3, r1, r4
	mov	r5, #0xe0
	ldrh	r2, [r3]
	lsl	r5, #1
	add	r3, r1, r5
	mov	r0, #0xe3
	strh	r2, [r3]
	lsl	r0, #1
	add	r3, r1, r0
	ldrh	r3, [r3]
	sub	r4, #2
	add	r2, r1, r4
	strh	r3, [r2]
	b	.L8a8c2
.L8a836:
	mov	r5, #0xe0
	lsl	r5, #1
	add	r3, r1, r5
	b	.L8a874
.L8a83e:
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	b	.L8a86c
.L8a846:
	mov	r0, #0xe7
	lsl	r0, #1
	add	r3, r1, r0
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	add	r0, #2
	add	r3, r1, r0
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	cmp	r2, r4
	bne	.L8a862
	cmp	r0, r2
	beq	.L8a89e
	b	.L8a866
.L8a862:
	mov	r4, #0xe0
	b	.L8a870
.L8a866:
	mov	r5, #0xe4
	lsl	r5, #1
	add	r3, r1, r5
.L8a86c:
	mov	r4, #0xe0
	ldrh	r2, [r3]
.L8a870:
	lsl	r4, #1
	add	r3, r1, r4
.L8a874:
	strh	r2, [r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	beq	.L8a88a
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	strh	r0, [r3]
	b	.L8a8c2
.L8a88a:
	ldr	r2, =gState
	mov	r4, #0xe5
	lsl	r4, #1
	add	r3, r2, r4
	mov	r5, #0xe1
	ldrh	r3, [r3]
	lsl	r5, #1
	add	r2, r5
	strh	r3, [r2]
	b	.L8a8c2
.L8a89e:
	mov	r0, #0xe4
	lsl	r0, #1
	add	r3, r1, r0
	mov	r4, #0xe0
	ldrh	r2, [r3]
	lsl	r4, #1
	add	r3, r1, r4
	mov	r5, #0xe5
	strh	r2, [r3]
	lsl	r5, #1
	add	r3, r1, r5
	sub	r0, #6
	ldrh	r3, [r3]
	add	r2, r1, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	_SetFlag
.L8a8c2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end RespawnAtSanctum

