	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_2008154
	push	{r5, r6, lr}
	ldr	r3, =.L16b0
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	ldr	r4, =gDMATaskCount
	lsl	r2, #16
	lsr	r5, r2, #17
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r1, r3
	strh	r0, [r0]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L18e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	ldr	r2, =0x2e51
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L18e:
	strh	r1, [r0]
	ldrh	r3, [r0]
	mov	r6, r3
	strh	r0, [r0]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L1c4
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r0, r5, #16
	add	r3, #1
	lsr	r1, r0, #16
	strh	r3, [r4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r1
	add	r2, r4
	lsl	r3, #8
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
	b	.L1c6
.L1c4:
	lsl	r0, r5, #16
.L1c6:
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r3, #0xf0
	lsl	r3, #12
	cmp	r0, r3
	bls	.L1d8
	ldr	r0, =OvlFunc_880_2008154
	bl	__StopTask
.L1d8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_880_2008154

