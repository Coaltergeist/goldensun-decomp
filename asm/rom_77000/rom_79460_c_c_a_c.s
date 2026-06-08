	.include "macros.inc"

.thumb_func_start Func_80797fc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r2
	cmp	r7, #7
	ble	.L79838
	bl	GetEnemyInfo
	add	r0, #0x34
	ldrb	r1, [r0]
	cmp	r1, #0x2b
	bls	.L79814
	mov	r1, #0
.L79814:
	lsl	r3, r1, #1
	add	r3, r1
	ldr	r2, =.L88e38
	lsl	r3, #3
	add	r3, r2
	mov	r5, #0
	mov	r0, r6
	add	r1, r3, #4
.L79824:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #3
	ble	.L79824
	b	.L79870
.L79838:
	mov	r0, r6
	add	r1, #0x24
	mov	r5, #3
.L7983e:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	sub	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #0
	bge	.L7983e
	cmp	r7, #7
	bgt	.L79870
	mov	r5, #0
.L79856:
	mov	r0, r7
	bl	GetPCBaseStats
	mov	r3, r5
	add	r3, #0x90
	add	r0, #2
	ldrb	r2, [r0, r3]
	ldr	r3, [r6]
	add	r5, #1
	add	r3, r2
	stmia	r6!, {r3}
	cmp	r5, #3
	ble	.L79856
.L79870:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80797fc

