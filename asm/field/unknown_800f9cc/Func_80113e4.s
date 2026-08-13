	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80113e4  @ 0x080113e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r1, #0
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1140e
	ldmia	r3!, {r2}
	str	r2, [sp, #8]
	ldr	r3, [r3, #4]
	str	r3, [sp, #4]
.L1140e:
	ldr	r1, [sp, #8]
	mov	r2, #0xff
	lsl	r2, #24
	add	r3, r1, r2
	ldr	r1, [sp, #4]
	ldr	r2, =0xfec00000
	asr	r3, #25
	str	r3, [sp, #8]
	add	r3, r1, r2
	asr	r3, #25
	str	r3, [sp, #4]
	mov	r3, #0
	mov	r9, r3
	mov	r11, r3
.L1142a:
	mov	r1, #0
	ldr	r6, [sp, #4]
	mov	r10, r1
.L11430:
	mov	r3, r6
	mov	r2, #0xf
	and	r3, r2
	mov	r5, #0
	mov	r8, r6
	lsl	r7, r3, #4
.L1143c:
	ldr	r3, [sp, #8]
	add	r1, r3, r5
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r4, r7, r3
	mov	r2, #0x9c
	lsl	r3, r4, #1
	lsl	r2, #1
	add	r3, r2
	ldr	r2, [sp, #0xc]
	ldrh	r4, [r2, r3]
	mov	r3, #1
	add	r4, r11
	str	r3, [sp]
	mov	r0, r9
	mov	r2, r8
	mov	r3, r4
	add	r5, #1
	bl	Func_80108e4
	cmp	r5, #1
	bls	.L1143c
	mov	r3, #1
	add	r10, r3
	mov	r1, r10
	add	r6, #1
	cmp	r1, #1
	bls	.L11430
	mov	r2, #0xa0
	add	r9, r3
	lsl	r2, #1
	mov	r3, r9
	add	r11, r2
	cmp	r3, #1
	bls	.L1142a
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80113e4
