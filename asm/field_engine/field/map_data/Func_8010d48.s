	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010d48  @ 0x08010d48
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, r3
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, [r3]
	mov	r6, #0
	sub	sp, #4
	mov	r4, r2
	mov	r12, r6
	cmp	r3, #0
	beq	.L10d6c
	ldmia	r3!, {r6}
	ldr	r3, [r3, #4]
	mov	r12, r3
.L10d6c:
	asr	r1, #4
	lsl	r3, r1, #4
	mov	r2, r12
	asr	r5, #4
	asr	r0, #3
	asr	r4, #3
	add	r7, r3, r5
	asr	r2, #24
	asr	r3, r0, #31
	mov	r12, r2
	asr	r5, r4, #31
	lsr	r2, r3, #31
	mov	r14, r3
	add	r2, r0, r2
	lsr	r3, r5, #31
	mov	r1, #0xf
	asr	r2, #1
	add	r3, r4, r3
	and	r2, r1
	asr	r3, #1
	and	r3, r1
	lsl	r2, #4
	add	r2, r3
	mov	r3, #0x9c
	lsl	r3, #1
	lsl	r2, #1
	add	r2, r3
	asr	r6, #24
	mov	r3, r8
	strh	r7, [r3, r2]
	sub	r3, r6, r4
	cmp	r3, #0
	blt	.L10db4
	cmp	r3, #1
	ble	.L10dba
	b	.L10e04
.L10db4:
	sub	r3, r4, r6
	cmp	r3, #1
	bgt	.L10e04
.L10dba:
	mov	r2, r12
	sub	r3, r2, r0
	cmp	r3, #0
	blt	.L10dc8
	cmp	r3, #1
	ble	.L10dd0
	b	.L10e04
.L10dc8:
	mov	r2, r12
	sub	r3, r0, r2
	cmp	r3, #1
	bgt	.L10e04
.L10dd0:
	mov	r3, r14
	lsr	r6, r5, #31
	lsr	r5, r3, #31
	add	r6, r4, r6
	add	r5, r0, r5
	mov	r2, #1
	asr	r6, #1
	asr	r5, #1
	mov	r8, r2
	str	r2, [sp]
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	mov	r0, #0
	bl	Func_80108e4
	mov	r2, #0xa0
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #1
	mov	r1, r6
	mov	r2, r5
	bl	Func_80108e4
.L10e04:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8010d48
