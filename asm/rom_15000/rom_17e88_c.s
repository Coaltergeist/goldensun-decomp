	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8018850  @ 0x08018850
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	mov	r6, r3
	ldr	r3, .L189f0	@ iwram_3001e8c
	ldr	r4, [r3]
	ldr	r3, .L189f4	@ .L188d4
	mov	r2, #0
	mov	r10, r2
	mov	r14, r3
	mov	r2, #0x18
	mov	r3, #0x10
	mov	r1, #0xf
	mov	r5, #0
	add	r2, sp
	add	r3, sp
	mov	r11, r1
	mov	r7, #0
	mov	r1, #0
	mov	r8, r2
	mov	r12, r5
	mov	r9, r3
.L1888a:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r4, r3]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	cmp	r2, #0x1f
	bls	.L188c6
	cmp	r2, #0x20
	bne	.L188a8
	add	r1, #5
	add	r5, #1
	b	.L1888a
.L188a8:
	ldr	r3, =Data_32224
	sub	r2, #0x20
	lsl	r2, #5
	ldrh	r2, [r3, r2]
	ldr	r3, =0xeac
	add	r3, r4, r3
	ldrh	r3, [r3]
	str	r3, [sp]
	cmp	r3, #1
	beq	.L188c0
	cmp	r3, #5
	bne	.L188c2
.L188c0:
	add	r2, #1
.L188c2:
	add	r1, r2
	b	.L1888a
.L188c6:
	cmp	r2, #0x1c
	bhi	.L1888a
	lsl	r3, r2, #2
	mov	r2, r14
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L188d4:
	.word	.L189a2
	.word	.L189a2
	.word	.L1888a
	.word	.L18948
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1897e
	.word	.L18986
	.word	.L1897e
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L18978
	.word	.L1897e
	.word	.L1888a
	.word	.L1897e
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L18978

.L18948:
	mov	r3, r8
	mov	r2, r12
	add	r5, #1
	strh	r5, [r3, r2]
	mov	r3, r9
	strh	r1, [r3, r2]
	cmp	r7, r1
	bcs	.L1895a
	mov	r7, r1
.L1895a:
	mov	r3, r10
	cmp	r3, #2
	bhi	.L1896a
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	lsl	r2, #1
	mov	r12, r2
.L1896a:
	ldr	r2, .L189f4	@ .L188d4
	mov	r3, #0xf
	mov	r5, #0
	mov	r1, #0
	add	r11, r3
	mov	r14, r2
	b	.L1888a
.L18978:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L1897e:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L1888a
.L18986:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r4, r3]
	ldr	r3, =0xeac
	add	r3, r4
	strh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r2, .L189f4	@ .L188d4
	add	r0, #1
	and	r0, r3
	mov	r14, r2
	b	.L1888a
.L189a2:
	mov	r3, r8
	mov	r2, r12
	add	r5, #1
	strh	r5, [r3, r2]
	mov	r3, r9
	strh	r1, [r3, r2]
	cmp	r7, r1
	bcs	.L189b4
	mov	r7, r1
.L189b4:
	ldr	r1, =0xea4
	add	r3, r4, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L189c0
	add	r7, #2
.L189c0:
	ldr	r2, [sp, #0xc]
	str	r7, [r2]
	ldr	r1, [sp, #8]
	mov	r3, r11
	str	r3, [r1]
	mov	r3, r7
	add	r3, #0x13
	lsr	r7, r3, #3
	lsl	r3, r7, #3
	mov	r7, r3
	sub	r7, #0x10
	cmp	r6, #0
	beq	.L18a3e
	mov	r2, #0
	mov	r5, #0
.L189de:
	mov	r1, r8
	ldrh	r3, [r5, r1]
	cmp	r3, #1
	bhi	.L18a08
	ldr	r3, .L189ec	@ 0
	strh	r3, [r6]
	b	.L18a34

	.align	2, 0
.L189ec:
	.word	0
.L189f0:
	.word	iwram_3001e8c
.L189f4:
	.word	.L188d4
	.pool

.L18a08:
	mov	r1, r9
	ldrh	r3, [r5, r1]
	sub	r0, r7, r3
	sub	r0, #4
	cmp	r0, #0
	bge	.L18a16
	mov	r0, #0
.L18a16:
	mov	r3, r8
	ldrh	r1, [r5, r3]
	lsl	r0, #8
	sub	r1, #1
	str	r2, [sp, #4]
	bl	__divsi3
	mov	r1, #0xc0
	lsl	r1, #4
	ldr	r2, [sp, #4]
	cmp	r0, r1
	bls	.L18a32
	mov	r0, #0x80
	lsl	r0, #2
.L18a32:
	strh	r0, [r6]
.L18a34:
	add	r6, #2
	add	r2, #1
	add	r5, #2
	cmp	r2, r10
	bls	.L189de
.L18a3e:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8018850

.thumb_func_start Func_8018a50  @ 0x08018a50
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	str	r1, [sp, #8]
	mov	r8, r3
	ldr	r3, =iwram_3001e8c
	add	r1, sp, #0x1c
	ldr	r5, [r3]
	mov	r3, #0xf
	str	r3, [r1]
	str	r3, [r1, #4]
	str	r3, [r1, #8]
	str	r3, [r1, #0xc]
	str	r3, [r1, #0x10]
	str	r3, [r1, #0x14]
	str	r3, [r1, #0x18]
	str	r3, [r1, #0x1c]
	str	r3, [r1, #0x20]
	str	r3, [r1, #0x24]
	str	r3, [r1, #0x28]
	str	r3, [r1, #0x2c]
	str	r3, [r1, #0x30]
	str	r3, [r1, #0x34]
	str	r3, [r1, #0x38]
	str	r3, [r1, #0x3c]
	add	r3, sp, #0x14
	mov	r14, r2
	mov	r9, r3
	mov	r2, #0
	add	r3, sp, #0xc
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r4, #0
	mov	r6, #0
	mov	r7, #0
	mov	r12, r2
	mov	r11, r3
.L18aa4:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r5, r3]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	cmp	r2, #0x1f
	bls	.L18ae0
	cmp	r2, #0x20
	bne	.L18ac2
	add	r4, #5
	add	r6, #1
	b	.L18aa4
.L18ac2:
	ldr	r3, =Data_32224
	sub	r2, #0x20
	lsl	r2, #5
	ldrh	r2, [r3, r2]
	ldr	r3, =0xeac
	add	r3, r5, r3
	ldrh	r3, [r3]
	str	r3, [sp]
	cmp	r3, #1
	beq	.L18ada
	cmp	r3, #5
	bne	.L18adc
.L18ada:
	add	r2, #1
.L18adc:
	add	r4, r2
	b	.L18aa4
.L18ae0:
	cmp	r2, #0x1c
	bhi	.L18aa4
	lsl	r3, r2, #2
	ldr	r2, =.L18aec
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L18aec:
	.word	.L18b92
	.word	.L18bac
	.word	.L18aa4
	.word	.L18b60
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bde
	.word	.L18bce
	.word	.L18bde
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bc6
	.word	.L18bde
	.word	.L18aa4
	.word	.L18bde
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bc6

.L18b60:
	mov	r3, r9
	mov	r2, r12
	add	r6, #1
	strh	r6, [r3, r2]
	mov	r3, r11
	strh	r4, [r3, r2]
	cmp	r7, #0
	bne	.L18b76
	cmp	r10, r4
	bcs	.L18b76
	mov	r10, r4
.L18b76:
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L18b84
	add	r3, #1
	str	r3, [sp, #4]
	lsl	r3, #1
	mov	r12, r3
.L18b84:
	lsl	r2, r7, #2
	ldr	r3, [r1, r2]
	add	r3, #0xf
	mov	r6, #0
	mov	r4, #0
	str	r3, [r1, r2]
	b	.L18aa4
.L18b92:
	mov	r2, r9
	mov	r3, r12
	add	r6, #1
	strh	r6, [r2, r3]
	mov	r2, r11
	strh	r4, [r2, r3]
	cmp	r7, #0
	bne	.L18ba8
	cmp	r10, r4
	bcs	.L18ba8
	mov	r10, r4
.L18ba8:
	add	r7, #1
	b	.L18be6
.L18bac:
	mov	r2, r9
	mov	r3, r12
	add	r6, #1
	strh	r6, [r2, r3]
	mov	r2, r11
	strh	r4, [r2, r3]
	cmp	r7, #0
	bne	.L18bc2
	cmp	r10, r4
	bcs	.L18bc2
	mov	r10, r4
.L18bc2:
	add	r7, #1
	b	.L18aa4
.L18bc6:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L18bde
.L18bce:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r5, r3]
	ldr	r3, =0xeac
	add	r3, r5, r3
	strh	r2, [r3]
.L18bde:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L18aa4
.L18be6:
	ldr	r2, =0xea4
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L18bf4
	mov	r3, #2
	add	r10, r3
.L18bf4:
	mov	r4, #0
	cmp	r4, r7
	bcs	.L18c20
	mov	r0, r1
	mov	r5, r0
.L18bfe:
	cmp	r4, #0
	bne	.L18c0a
	ldr	r3, [r5]
	mov	r2, r14
	str	r3, [r2]
	b	.L18c18
.L18c0a:
	mov	r2, r14
	ldr	r3, [r2]
	ldr	r2, [r0]
	cmp	r3, r2
	bcs	.L18c18
	mov	r3, r14
	str	r2, [r3]
.L18c18:
	add	r4, #1
	add	r0, #4
	cmp	r4, r7
	bcc	.L18bfe
.L18c20:
	ldr	r3, [sp, #8]
	mov	r2, r10
	str	r2, [r3]
	mov	r3, r10
	add	r3, #0x13
	lsr	r3, #3
	lsl	r3, #3
	sub	r3, #0x10
	mov	r2, r8
	mov	r10, r3
	cmp	r2, #0
	beq	.L18c9a
	mov	r6, #0
	mov	r5, #0
.L18c3c:
	mov	r2, r9
	ldrh	r3, [r5, r2]
	cmp	r3, #1
	bhi	.L18c6c
	ldr	r3, .L18c50	@ 0
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	b	.L18c8e

	.align	2, 0
.L18c50:
	.word	0
	.pool

.L18c6c:
	mov	r2, r11
	ldrh	r3, [r5, r2]
	mov	r2, r10
	sub	r0, r2, r3
	sub	r0, #4
	cmp	r0, #0
	bge	.L18c7c
	mov	r0, #0
.L18c7c:
	mov	r3, r9
	ldrh	r1, [r5, r3]
	lsl	r0, #8
	sub	r1, #1
	bl	__divsi3
	mov	r2, r8
	mov	r3, #2
	strh	r0, [r2]
.L18c8e:
	add	r8, r3
	ldr	r2, [sp, #4]
	add	r6, #1
	add	r5, #2
	cmp	r6, r2
	bls	.L18c3c
.L18c9a:
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8018a50

	.section .rodata
	.global .L33e40

.L33e40:
	.incrom 0x33e40, 0x33e60
