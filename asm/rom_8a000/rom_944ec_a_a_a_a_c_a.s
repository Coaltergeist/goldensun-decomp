	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8094544  @ 0x08094544
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ed8
	ldr	r7, [r3]
	ldr	r3, =iwram_3001ad0
	mov	r4, #0xe
	ldrsh	r2, [r3, r4]
	sub	sp, #0x18
	mov	r1, #0xc
	ldrsh	r0, [r3, r1]
	str	r2, [sp, #0x14]
	mov	r2, #0xa
	ldrsh	r1, [r3, r2]
	mov	r12, r0
	mov	r5, #8
	ldrsh	r0, [r3, r5]
	str	r1, [sp, #0x10]
	mov	r2, #6
	ldrsh	r5, [r3, r2]
	mov	r4, #4
	ldrsh	r1, [r3, r4]
	mov	r4, #0xf0
	str	r5, [sp, #0xc]
	lsl	r4, #4
	add	r3, r7, r4
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r5, #0xf1
	lsl	r3, #7
	lsl	r5, #4
	add	r4, r7, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r2, =0xf02
	mov	r14, r3
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r3, [sp, #0x14]
	lsl	r3, #16
	str	r3, [sp, #8]
	sub	r5, #8
	lsr	r3, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r6, r3
	mul	r6, r2
	mov	r2, r14
	cmp	r2, #0
	bne	.L945ce
	mov	r5, #0
	mov	r3, r4
.L945bc:
	mov	r4, r12
	add	r5, #1
	strh	r4, [r3]
	strh	r0, [r3, #4]
	strh	r1, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L945bc
	b	.L9462c
.L945ce:
	ldr	r5, =0xf18
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r2, r12
	mov	r8, r3
	lsl	r3, r2, #16
	lsl	r1, #16
	lsl	r2, r0, #16
	lsr	r3, #16
	ldr	r0, =Func_8000888
	lsr	r2, #16
	lsr	r1, #16
	str	r3, [sp, #4]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r2
	mov	r9, r1
.L945f0:
	mov	r2, #0xff
	asr	r3, r6, #16
	and	r3, r2
	ldr	r1, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r1, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L9460a
	add	r0, #0xff
.L9460a:
	lsl	r3, r0, #8
	ldr	r0, [sp, #4]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L945f0
.L9462c:
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r5, =0xf14
	lsl	r3, #7
	add	r3, r7, r3
	add	r4, r3, #2
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, =0xf02
	mov	r14, r3
	ldr	r1, [sp, #8]
	add	r3, r7, r0
	ldrh	r2, [r3]
	sub	r5, #8
	lsr	r3, r1, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r0, r14
	mov	r6, r3
	mul	r6, r2
	cmp	r0, #0
	bne	.L94686
	mov	r5, #0
	mov	r3, r4
.L9466a:
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r4, sp, #0xc
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	ldrh	r4, [r4]
	add	r5, #1
	strh	r1, [r3]
	strh	r2, [r3, #4]
	strh	r4, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L9466a
	b	.L946e4
.L94686:
	ldr	r5, =0xf1c
	ldr	r1, [sp, #0xc]
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, [sp, #0x10]
	lsl	r2, r1, #16
	ldr	r1, [sp, #8]
	mov	r8, r3
	lsr	r1, #16
	lsl	r3, r0, #16
	ldr	r0, =Func_8000888
	lsr	r3, #16
	lsr	r2, #16
	str	r1, [sp]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r3
	mov	r9, r2
.L946aa:
	asr	r3, r6, #16
	mov	r2, #0xff
	and	r3, r2
	ldr	r2, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L946c2
	add	r0, #0xff
.L946c2:
	lsl	r3, r0, #8
	ldr	r0, [sp]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L946aa
.L946e4:
	ldr	r3, =0xf02
	add	r2, r7, r3
	ldrh	r3, [r2]
	mov	r4, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r4, #4
	add	r1, r7, r4
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8094544

