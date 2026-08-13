	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CopyMapTiles  @ 0x08010424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	mov	r11, r2
	lsl	r1, #7
	lsl	r3, r4, #7
	ldr	r2, =gBuffer
	add	r1, r0
	add	r3, r11
	lsl	r1, #2
	lsl	r3, #2
	sub	sp, #0x24
	add	r3, r2
	add	r1, r2
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001e70
	mov	r0, #0x82
	ldr	r3, [r3]
	lsl	r0, #1
	add	r2, r3, r0
	add	r0, sp, #0xc
	mov	r9, r0
	mov	r6, #2
.L1045e:
	ldr	r3, [r2]
	asr	r3, #20
	str	r3, [r0]
	ldr	r3, [r2, #4]
	sub	r6, #1
	asr	r3, #20
	str	r3, [r0, #4]
	add	r2, #0x30
	add	r0, #8
	cmp	r6, #0
	bge	.L1045e
	ldr	r3, [sp, #0x48]
	mov	r7, r4
	add	r3, r7, r3
	cmp	r7, r3
	bcs	.L1052c
	ldr	r1, [sp, #0x44]
	str	r3, [sp]
	mov	r3, #0x80
	sub	r3, r1
	lsl	r3, #2
	mov	r8, r3
.L1048a:
	ldr	r2, [sp, #0x44]
	mov	r1, r11
	add	r3, r1, r2
	cmp	r1, r3
	bcs	.L10518
	mov	r12, r7
	mov	r4, r12
	mov	r14, r3
	mov	r3, #0xf
	and	r4, r3
	mov	r10, r3
	mov	r12, r4
.L104a2:
	ldr	r2, [sp, #8]
	ldmia	r2!, {r5}
	mov	r0, r2
	ldr	r4, [sp, #4]
	str	r0, [sp, #8]
	ldr	r3, =0xfff
	ldr	r2, =0xfffff000
	and	r5, r3
	ldr	r3, [r4]
	and	r3, r2
	orr	r3, r5
	stmia	r4!, {r3}
	mov	r2, r1
	mov	r0, r4
	mov	r3, r10
	mov	r4, r12
	and	r2, r3
	lsl	r3, r4, #5
	add	r3, r2
	str	r0, [sp, #4]
	mov	r6, #0
	mov	r0, r9
	lsl	r4, r3, #2
.L104d0:
	ldr	r3, [r0]
	cmp	r3, r1
	bgt	.L10504
	add	r3, #0x10
	cmp	r3, r1
	ble	.L10504
	ldr	r3, [r0, #4]
	cmp	r3, r7
	bgt	.L10504
	add	r3, #0xc
	cmp	r3, r7
	ble	.L10504
	lsl	r3, r5, #3
	ldr	r2, =0x6002800
	ldr	r5, =ewram_2020000
	add	r0, r4, r2
	add	r2, r3, r5
	ldr	r2, [r2]
	str	r2, [r0]
	ldr	r0, =ewram_2020004
	add	r2, r3, r0
	ldr	r3, =0x6002840
	add	r0, r4, r3
	ldr	r3, [r2]
	str	r3, [r0]
	b	.L10512
.L10504:
	mov	r2, #0x80
	lsl	r2, #4
	add	r6, #1
	add	r4, r2
	add	r0, #8
	cmp	r6, #2
	ble	.L104d0
.L10512:
	add	r1, #1
	cmp	r1, r14
	bcc	.L104a2
.L10518:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	ldr	r5, [sp]
	add	r3, r8
	add	r4, r8
	add	r7, #1
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	cmp	r7, r5
	bcc	.L1048a
.L1052c:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CopyMapTiles
