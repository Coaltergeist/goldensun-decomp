	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ca1c  @ 0x0801ca1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, =gState
	ldr	r2, =0x205
	add	r3, r7, r2
	mov	r9, r0
	ldrb	r0, [r3]
	mov	r1, #0x18
	add	r0, #0xc
	sub	sp, #4
	bl	__modsi3
	ldr	r2, =0x206
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, r0
	sub	r3, #7
	lsl	r5, #18
	mov	r10, r3
	asr	r5, #16
	ldr	r3, =.L36750
	mov	r0, r5
	mov	r1, #0x60
	mov	r8, r3
	bl	__modsi3
	lsl	r0, #16
	mov	r2, r8
	asr	r0, #16
	ldrb	r6, [r2, r0]
	mov	r0, r5
	mov	r1, #0x60
	add	r0, #0x20
	bl	__modsi3
	add	r5, #0x40
	mov	r3, r8
	ldrb	r7, [r3, r0]
	mov	r1, #0x60
	mov	r0, r5
	bl	__modsi3
	mov	r3, r8
	ldrb	r2, [r3, r0]
	add	r6, r10
	add	r7, r10
	add	r2, r10
	cmp	r6, #0
	bge	.L1ca86
	mov	r6, #0
.L1ca86:
	cmp	r7, #0
	bge	.L1ca8c
	mov	r7, #0
.L1ca8c:
	cmp	r2, #0
	bge	.L1ca92
	mov	r2, #0
.L1ca92:
	cmp	r6, #0x1f
	ble	.L1ca98
	mov	r6, #0x1f
.L1ca98:
	cmp	r7, #0x1f
	ble	.L1ca9e
	mov	r7, #0x1f
.L1ca9e:
	cmp	r2, #0x1f
	ble	.L1caa4
	mov	r2, #0x1f
.L1caa4:
	ldr	r3, =0x576
	add	r3, r9
	strh	r6, [r3]
	mov	r3, #0xaf
	lsl	r3, #3
	add	r3, r9
	strh	r7, [r3]
	ldr	r3, =0x57a
	add	r3, r9
	strh	r2, [r3]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ca1c

.thumb_func_start Func_801cae0  @ 0x0801cae0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =0xeeee
	mov	r10, r3
	ldr	r3, =0xcccc
	mov	r9, r3
	mov	r1, r10
	mov	r2, r9
	ldr	r3, =0x11110
	mov	r5, r0
	bl	Func_801cbd4
	ldr	r6, =0xbbbb
	ldr	r3, =0x50001e8
	mov	r2, r6
	strh	r0, [r3]
	ldr	r1, =0xd555
	mov	r3, r10
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001ea
	strh	r0, [r3]
	ldr	r3, =0xaaaa
	mov	r8, r3
	mov	r1, r6
	mov	r2, r8
	mov	r3, r9
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001ec
	ldr	r1, =0xa221
	strh	r0, [r3]
	ldr	r2, =0x9999
	mov	r3, r8
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001ee
	ldr	r1, =0x10888
	strh	r0, [r3]
	ldr	r2, =0xdddd
	ldr	r3, =0x13333
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001f0
	mov	r2, r10
	strh	r0, [r3]
	ldr	r1, =0x12221
	ldr	r3, =0x15555
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001f2
	mov	r2, #0x80
	strh	r0, [r3]
	ldr	r1, =0x13bbb
	lsl	r2, #9
	ldr	r3, =0x17777
	mov	r0, r5
	bl	Func_801cbd4
	ldr	r3, =0x50001f4
	strh	r0, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801cae0

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
