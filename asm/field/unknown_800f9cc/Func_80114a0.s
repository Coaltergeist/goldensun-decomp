	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80114a0  @ 0x080114a0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r1, #0
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r1, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L114ca
	ldmia	r3!, {r2}
	str	r2, [sp, #0xc]
	ldr	r3, [r3, #4]
	str	r3, [sp, #8]
.L114ca:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xff
	lsl	r2, #24
	add	r3, r1, r2
	ldr	r1, [sp, #8]
	ldr	r2, =0xfec00000
	asr	r3, #25
	str	r3, [sp, #0xc]
	add	r3, r1, r2
	asr	r3, #25
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r9, r3
.L114e6:
	ldr	r2, [sp, #4]
	mov	r1, #0
	ldr	r6, [sp, #8]
	mov	r10, r1
	mov	r11, r2
.L114f0:
	mov	r3, r6
	mov	r1, #0xf
	and	r3, r1
	mov	r5, #0
	mov	r8, r6
	lsl	r7, r3, #4
.L114fc:
	ldr	r2, [sp, #0xc]
	add	r1, r2, r5
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r4, r7, r3
	mov	r2, #0x9c
	lsl	r3, r4, #1
	lsl	r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x10]
	ldrh	r4, [r2, r3]
	mov	r3, #0
	add	r4, r11
	str	r3, [sp]
	mov	r0, r9
	mov	r2, r8
	mov	r3, r4
	bl	Func_80108e4
	cmp	r0, #0
	bne	.L1154e
	add	r5, #1
	cmp	r5, #1
	bls	.L114fc
	mov	r3, #1
	add	r10, r3
	mov	r1, r10
	add	r6, #1
	cmp	r1, #1
	bls	.L114f0
	ldr	r2, [sp, #4]
	mov	r3, #0xa0
	lsl	r3, #1
	mov	r1, #1
	add	r2, r3
	add	r9, r1
	str	r2, [sp, #4]
	mov	r2, r9
	cmp	r2, #1
	bls	.L114e6
.L1154e:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80114a0
