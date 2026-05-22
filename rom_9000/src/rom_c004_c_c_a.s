	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_c62c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1e70
	ldr	r0, [r6]
	sub	sp, #0x50
	str	r0, [sp, #0xc]
	mov	r2, r0
	add	r2, #0xe4
	ldr	r1, [r2]
	ldr	r3, =0xffff0000
	and	r1, r3
	str	r1, [sp, #8]
	ldr	r2, [r2, #4]
	and	r2, r3
	str	r2, [sp, #4]
	mov	r3, r6
	sub	r3, #8
	ldr	r3, [r3]
	str	r3, [sp]
	ldr	r5, =0x2c4
	mov	r0, #0x34
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_9bb8
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	sub	r6, #0xc
	ldr	r6, [r6]
	ldr	r2, [sp]
	mov	r10, r6
	strh	r3, [r2]
	mov	r4, #0x3f
	ldr	r3, =Func_888
	mov	r0, #0x54
	add	r0, r10
	mov	r7, r10
	str	r4, [sp, #0x10]
	mov	r11, r3
	mov	r8, r0
	add	r7, #8
.Lc696:
	mov	r1, r10
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.Lc6a0
	b	.Lc822
.Lc6a0:
	ldr	r1, [r7]
	cmp	r1, #0
	bne	.Lc6ae
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.Lc6ae
	b	.Lc7f8
.Lc6ae:
	mov	r2, r8
	ldrb	r3, [r2]
	mov	r6, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.Lc6bc
	b	.Lc822
.Lc6bc:
	cmp	r6, #1
	beq	.Lc6c2
	b	.Lc822
.Lc6c2:
	ldr	r0, [sp]
	mov	r4, #4
	ldrsh	r3, [r0, r4]
	cmp	r3, #0
	beq	.Lc6e0
	ldrb	r3, [r2, #8]
	cmp	r3, #0
	bne	.Lc6e0
	ldr	r5, [r7, #0x48]
	ldrb	r0, [r5, #0x1c]
	add	r5, #0x25
	bl	Func_3f78
	strb	r6, [r5]
	b	.Lc822
.Lc6e0:
	ldr	r3, [sp, #4]
	ldr	r0, [r7, #8]
	ldr	r2, [sp, #8]
	sub	r6, r0, r3
	ldr	r3, [r7, #4]
	sub	r2, r1, r2
	mov	r9, r2
	sub	r2, r6, r3
	ldr	r3, =0x1fffff
	ldr	r4, =0x12ffffe
	add	r3, r9
	ldr	r5, [r7, #0x48]
	cmp	r3, r4
	bls	.Lc6fe
	b	.Lc7ea
.Lc6fe:
	ldr	r3, =0xffe00000
	cmp	r2, r3
	ble	.Lc7ea
	ldr	r4, =0xdfffff
	cmp	r2, r4
	bgt	.Lc7ea
	ldrb	r3, [r7, #0x1a]
	mov	r2, #0x22
	add	r2, r10
	mov	r12, r2
	lsl	r2, r3, #1
	add	r2, r3
	mov	r3, #0x98
	lsl	r3, #1
	lsl	r2, #4
	add	r2, r3
	ldr	r4, [sp, #0xc]
	asr	r3, r0, #20
	lsl	r3, #7
	asr	r1, #20
	add	r1, r3
	ldr	r3, [r4, r2]
	lsl	r1, #2
	ldrb	r2, [r7, #0x1b]
	add	r1, r3, r1
	mov	r0, #0x23
	mov	r3, #1
	add	r0, r10
	and	r3, r2
	mov	r14, r0
	cmp	r3, #0
	beq	.Lc762
	ldr	r4, [r1]
	lsl	r3, r4, #16
	lsr	r0, r3, #30
	cmp	r0, #0
	beq	.Lc764
	mov	r2, #0xd
	ldrb	r1, [r5, #9]
	neg	r2, r2
	mov	r3, r2
	lsl	r0, #2
	and	r3, r1
	orr	r3, r0
	strb	r3, [r5, #9]
	ldrb	r3, [r5, #0x15]
	and	r2, r3
	orr	r2, r0
	strb	r2, [r5, #0x15]
	b	.Lc764
.Lc762:
	ldr	r4, [r1]
.Lc764:
	lsl	r3, r4, #18
	lsr	r1, r3, #30
	cmp	r1, #0
	beq	.Lc774
	mov	r3, r1
	add	r3, #0xff
	mov	r1, r12
	strb	r3, [r1]
.Lc774:
	ldr	r0, [r7, #0x10]
	ldr	r1, [r5, #0x18]
	.call_via r11
	str	r0, [sp, #0x14]
	ldr	r0, [r7, #0x14]
	ldr	r1, [r5, #0x18]
	.call_via r11
	mov	r2, #0x14
	add	r1, sp, #0x1c
	add	r2, sp
	mov	r3, r9
	str	r0, [r2, #4]
	str	r3, [r1]
	mov	r12, r2
	ldr	r2, [r7, #4]
	str	r6, [r1, #8]
	str	r2, [r1, #4]
	ldr	r4, [r7, #0xc]
	str	r4, [r1, #0xc]
	mov	r3, r14
	ldrb	r0, [r3]
	mov	r3, #2
	and	r3, r0
	cmp	r3, #0
	beq	.Lc7be
	ldr	r3, =0xfec00000
	add	r2, r3
	str	r2, [r1, #4]
	add	r2, r6, r3
	add	r3, r4, r3
	str	r2, [r1, #8]
	str	r3, [r1, #0xc]
	mov	r4, r14
	ldrb	r0, [r4]
.Lc7be:
	mov	r3, #4
	and	r3, r0
	cmp	r3, #0
	beq	.Lc7dc
	ldr	r3, [r1, #4]
	mov	r2, #0xa0
	lsl	r2, #17
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r1, #8]
	add	r3, r2
	str	r3, [r1, #8]
	ldr	r3, [r1, #0xc]
	add	r3, r2
	str	r3, [r1, #0xc]
.Lc7dc:
	mov	r0, r10
	ldrh	r3, [r0, #6]
	mov	r2, r12
	mov	r0, r5
	bl	Func_b168
	b	.Lc822
.Lc7ea:
	mov	r1, r8
	ldrb	r3, [r1, #8]
	cmp	r3, #0
	bne	.Lc822
	ldrb	r2, [r5, #0x1d]
	mov	r6, #1
	b	.Lc80e
.Lc7f8:
	mov	r2, r8
	ldrb	r3, [r2]
	mov	r6, #0xf
	and	r6, r3
	cmp	r6, #1
	bne	.Lc822
	ldrb	r3, [r2, #8]
	ldr	r5, [r7, #0x48]
	cmp	r3, #0
	bne	.Lc822
	ldrb	r2, [r5, #0x1d]
.Lc80e:
	mov	r3, r6
	and	r3, r2
	cmp	r3, #0
	bne	.Lc822
	ldrb	r0, [r5, #0x1c]
	bl	Func_3f78
	mov	r3, r5
	add	r3, #0x25
	strb	r6, [r3]
.Lc822:
	ldr	r3, [sp, #0x10]
	mov	r4, #0x70
	sub	r3, #1
	str	r3, [sp, #0x10]
	add	r8, r4
	add	r7, #0x70
	add	r10, r4
	cmp	r3, #0
	blt	.Lc836
	b	.Lc696
.Lc836:
	mov	r0, #0x34
	bl	Func_2dd8
	add	sp, #0x50
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c62c

