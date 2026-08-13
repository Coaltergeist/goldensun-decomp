	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80105d4  @ 0x080105d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	ldr	r6, [sp, #0x48]
	lsl	r1, #7
	add	r1, r0
	ldr	r0, [sp, #0x44]
	mov	r4, r3
	lsl	r3, r6, #7
	add	r3, r0
	mov	r11, r2
	ldr	r2, =gBuffer
	lsl	r1, #2
	lsl	r3, #2
	add	r1, r2
	add	r3, r2
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_3001e70
	mov	r1, #0x82
	ldr	r3, [r3]
	lsl	r1, #1
	add	r0, sp, #0xc
	add	r2, r3, r1
	mov	r9, r0
	mov	r5, #2
.L10612:
	ldr	r3, [r2]
	asr	r3, #20
	str	r3, [r0]
	ldr	r3, [r2, #4]
	sub	r5, #1
	asr	r3, #20
	str	r3, [r0, #4]
	add	r2, #0x30
	add	r0, #8
	cmp	r5, #0
	bge	.L10612
	add	r3, r6, r4
	cmp	r6, r3
	bge	.L106d4
	str	r3, [sp]
	mov	r2, r11
	mov	r3, #0x80
	sub	r3, r2
	lsl	r3, #2
	mov	r8, r3
.L1063a:
	ldr	r1, [sp, #0x44]
	mov	r4, r11
	add	r3, r1, r4
	cmp	r1, r3
	bge	.L106c0
	mov	r12, r6
	mov	r5, #0xf
	mov	r0, r12
	and	r0, r5
	mov	r14, r3
	mov	r10, r5
	mov	r12, r0
.L10652:
	ldr	r4, [sp, #8]
	ldmia	r4!, {r3}
	ldr	r0, [sp, #4]
	ldr	r7, =0xfff
	mov	r2, r4
	str	r2, [sp, #8]
	mov	r4, r12
	stmia	r0!, {r3}
	and	r7, r3
	mov	r2, r1
	mov	r3, r10
	and	r2, r3
	lsl	r3, r4, #5
	mov	r5, r0
	add	r3, r2
	str	r5, [sp, #4]
	mov	r0, r9
	mov	r5, #0
	lsl	r4, r3, #2
.L10678:
	ldr	r3, [r0]
	cmp	r3, r1
	bgt	.L106ac
	add	r3, #0x10
	cmp	r3, r1
	ble	.L106ac
	ldr	r3, [r0, #4]
	cmp	r3, r6
	bgt	.L106ac
	add	r3, #0xc
	cmp	r3, r6
	ble	.L106ac
	ldr	r5, =0x6002800
	add	r0, r4, r5
	ldr	r5, =ewram_2020000
	lsl	r3, r7, #3
	add	r2, r3, r5
	ldr	r2, [r2]
	str	r2, [r0]
	ldr	r0, =ewram_2020004
	add	r2, r3, r0
	ldr	r3, =0x6002840
	add	r0, r4, r3
	ldr	r3, [r2]
	str	r3, [r0]
	b	.L106ba
.L106ac:
	mov	r2, #0x80
	lsl	r2, #4
	add	r5, #1
	add	r4, r2
	add	r0, #8
	cmp	r5, #2
	ble	.L10678
.L106ba:
	add	r1, #1
	cmp	r1, r14
	blt	.L10652
.L106c0:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	ldr	r5, [sp]
	add	r3, r8
	add	r4, r8
	add	r6, #1
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	cmp	r6, r5
	blt	.L1063a
.L106d4:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80105d4
