	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010230  @ 0x08010230
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r7, r0
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, #0x82
	sub	sp, #0x20
	lsl	r1, #1
	str	r3, [sp, #0x14]
	add	r3, r1
	mov	r14, r3
	ldr	r3, =0xffa00000
	add	r0, r3
	ldr	r3, [sp, #0x14]
	ldr	r2, =0xff880000
	add	r3, #0xec
	ldr	r3, [r3]
	add	r7, r2
	cmp	r7, r3
	bge	.L10266
	mov	r7, r3
.L10266:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf4
	ldr	r3, [r3]
	ldr	r5, =0xff100000
	add	r3, r5
	cmp	r7, r3
	ble	.L10276
	mov	r7, r3
.L10276:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf0
	ldr	r3, [r3]
	cmp	r0, r3
	bge	.L10282
	mov	r0, r3
.L10282:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf8
	ldr	r3, [r3]
	ldr	r1, =0xff600000
	add	r3, r1
	cmp	r0, r3
	ble	.L10292
	mov	r0, r3
.L10292:
	ldr	r2, [sp, #0x14]
	add	r2, #0xe4
	str	r2, [sp, #0x10]
	str	r7, [r2]
	ldr	r3, [sp, #0x14]
	mov	r5, #0
	add	r3, #0xe8
	str	r3, [sp, #0xc]
	str	r0, [r3]
	str	r5, [sp, #0x1c]
.L102a6:
	ldr	r1, [sp, #0x1c]
	mov	r2, #0x80
	lsl	r2, #1
	ldr	r5, [sp, #0x14]
	add	r3, r1, r2
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	bne	.L102b8
	b	.L103da
.L102b8:
	ldr	r1, [sp, #0x10]
	mov	r2, r14
	ldr	r0, [r1]
	mov	r4, #0x16
	ldr	r1, [r2, #0x10]
	ldr	r3, =Func_8000888
	.call_via r3
	ldr	r5, [sp, #0xc]
	mov	r2, r14
	mov	r7, r0
	ldr	r1, [r2, #0x14]
	ldr	r0, [r5]
	.call_via r3
	mov	r3, r14
	ldr	r2, [r3, #0x18]
	cmp	r2, #0
	beq	.L102f4
	ldr	r3, [r3, #0x20]
	mov	r5, r14
	add	r3, r2
	add	r7, r3
	str	r3, [r5, #0x20]
	ldrh	r3, [r5, #0x28]
	ldr	r1, =0x7ffff
	lsl	r3, #19
	orr	r3, r1
	and	r7, r3
.L102f4:
	mov	r3, r14
	ldr	r2, [r3, #0x1c]
	cmp	r2, #0
	beq	.L10312
	ldr	r3, [r3, #0x24]
	mov	r5, r14
	add	r3, r2
	add	r0, r3
	str	r3, [r5, #0x24]
	ldrh	r3, [r5, #0x2a]
	ldr	r1, =0x7ffff
	lsl	r3, #19
	orr	r3, r1
	and	r0, r3
	mov	r4, #0x20
.L10312:
	mov	r2, r14
	ldr	r3, [r2, #8]
	add	r7, r3
	ldr	r3, [r2, #0xc]
	add	r0, r3
	mov	r3, #0x30
	add	r14, r3
	mov	r1, r7
	cmp	r7, #0
	bge	.L1032a
	ldr	r5, =0x7ffff
	add	r1, r7, r5
.L1032a:
	asr	r7, r1, #19
	mov	r2, r0
	cmp	r0, #0
	bge	.L10336
	ldr	r3, =0x7ffff
	add	r2, r0, r3
.L10336:
	ldr	r5, [sp, #0x1c]
	lsl	r3, r5, #11
	ldr	r5, =0x6002800
	asr	r0, r2, #19
	add	r5, r3, r5
	lsr	r3, r2, #31
	add	r3, r0, r3
	mov	r2, #0x7f
	asr	r3, #1
	and	r3, r2
	lsl	r6, r3, #7
	mov	r2, #0
	mov	r3, #0x1e
	lsr	r4, #1
	and	r3, r0
	mov	r8, r2
	mov	r11, r4
	str	r5, [sp, #0x18]
	lsl	r5, r3, #5
	cmp	r8, r11
	bcs	.L103da
	lsr	r3, r1, #31
	add	r3, r7, r3
	asr	r3, #1
	str	r3, [sp, #8]
	mov	r1, #0x1e
	mov	r3, #0x7f
	mov	r9, r3
	mov	r10, r1
.L10370:
	ldr	r4, [sp, #8]
	mov	r2, r9
	mov	r0, r7
	mov	r3, r10
	mov	r1, #0
	and	r4, r2
	and	r0, r3
	mov	r12, r1
.L10380:
	add	r3, r6, r4
	ldr	r2, =gBuffer
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, =ewram_2020000
	lsl	r1, #20
	lsr	r1, #17
	str	r1, [sp, #4]
	add	r3, r1, r2
	ldr	r1, [sp, #0x18]
	add	r2, r5, r0
	lsl	r2, #1
	add	r2, r1
	str	r2, [sp]
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, [sp, #4]
	ldr	r1, =ewram_2020004
	add	r3, r2, r1
	ldr	r3, [r3]
	ldr	r2, [sp]
	str	r3, [r2, #0x40]
	mov	r2, #1
	mov	r3, r9
	add	r4, #1
	add	r12, r2
	and	r4, r3
	add	r0, #2
	mov	r1, r10
	mov	r3, r12
	and	r0, r1
	cmp	r3, #0xf
	bls	.L10380
	mov	r3, #0xfe
	lsl	r3, #6
	add	r6, #0x80
	and	r6, r3
	mov	r3, #0xf0
	add	r5, #0x40
	lsl	r3, #2
	add	r8, r2
	and	r5, r3
	cmp	r8, r11
	bcc	.L10370
.L103da:
	ldr	r5, [sp, #0x1c]
	add	r5, #1
	str	r5, [sp, #0x1c]
	cmp	r5, #2
	bhi	.L103e6
	b	.L102a6
.L103e6:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8010230
