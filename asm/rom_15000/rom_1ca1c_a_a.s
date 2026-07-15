	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_1ca1c, "ax", %progbits

	.section .text.after_cc50, "ax", %progbits

.thumb_func_start SetUIColor  @ 0x0801ccc0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r1
	add	r0, #0xc
	mov	r1, #0x18
	sub	sp, #8
	bl	__modsi3
	mov	r5, r0
	lsl	r5, #18
	asr	r5, #16
	ldr	r2, =.L36750
	mov	r0, r5
	mov	r1, #0x60
	mov	r8, r2
	bl	__modsi3
	lsl	r0, #16
	mov	r2, r8
	asr	r0, #16
	sub	r6, #7
	ldrb	r3, [r2, r0]
	lsl	r6, #16
	asr	r6, #16
	add	r3, r6
	mov	r0, r5
	lsl	r3, #16
	asr	r3, #16
	mov	r1, #0x60
	add	r0, #0x20
	mov	r10, r3
	bl	__modsi3
	mov	r2, r8
	ldrb	r3, [r2, r0]
	add	r5, #0x40
	add	r3, r6
	lsl	r3, #16
	mov	r0, r5
	mov	r1, #0x60
	asr	r7, r3, #16
	bl	__modsi3
	mov	r2, r8
	ldrb	r3, [r2, r0]
	add	r3, r6
	lsl	r3, #16
	mov	r2, r10
	asr	r3, #16
	cmp	r2, #0
	bge	.L1cd30
	mov	r2, #0
	mov	r10, r2
.L1cd30:
	mov	r2, r10
	cmp	r2, #0x1f
	ble	.L1cd3a
	mov	r2, #0x1f
	mov	r10, r2
.L1cd3a:
	cmp	r7, #0
	bge	.L1cd40
	mov	r7, #0
.L1cd40:
	cmp	r7, #0x1f
	ble	.L1cd46
	mov	r7, #0x1f
.L1cd46:
	cmp	r3, #0
	bge	.L1cd4c
	mov	r3, #0
.L1cd4c:
	cmp	r3, #0x1f
	ble	.L1cd52
	mov	r3, #0x1f
.L1cd52:
	mov	r5, sp
	strh	r3, [r5, #4]
	ldr	r3, =0xeeee
	mov	r2, r10
	strh	r2, [r5]
	mov	r10, r3
	ldr	r2, =0xcccc
	mov	r1, r10
	strh	r7, [r5, #2]
	ldr	r3, =0x11110
	mov	r0, r5
	mov	r9, r2
	bl	Func_801cc50
	ldr	r6, =0xbbbb
	ldr	r3, =0x50001e8
	mov	r2, r6
	strh	r0, [r3]
	ldr	r1, =0xd555
	mov	r3, r10
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001ea
	strh	r0, [r3]
	ldr	r3, =0xaaaa
	mov	r8, r3
	mov	r1, r6
	mov	r2, r8
	mov	r3, r9
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001ec
	ldr	r1, =0xa221
	strh	r0, [r3]
	ldr	r2, =0x9999
	mov	r3, r8
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001ee
	ldr	r1, =0x10888
	strh	r0, [r3]
	ldr	r2, =0xdddd
	ldr	r3, =0x13333
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001f0
	mov	r2, r10
	strh	r0, [r3]
	ldr	r1, =0x12221
	ldr	r3, =0x15555
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001f2
	mov	r2, #0x80
	strh	r0, [r3]
	ldr	r1, =0x13bbb
	lsl	r2, #9
	ldr	r3, =0x17777
	mov	r0, r5
	bl	Func_801cc50
	ldr	r3, =0x50001f4
	add	sp, #8
	strh	r0, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end SetUIColor
