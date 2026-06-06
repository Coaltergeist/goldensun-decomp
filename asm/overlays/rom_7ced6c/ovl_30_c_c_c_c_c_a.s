	.include "macros.inc"

.thumb_func_start OvlFunc_946_200967c
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16ae
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	b	.L16b8
.L16ae:
	mov	r0, #0xf
	bl	__Func_8092054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L16b8:
	ldr	r0, =0x8c5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16d2
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	b	.L16dc
.L16d2:
	mov	r0, #0x10
	bl	__Func_8092054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L16dc:
	ldr	r0, =0x8c6
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16f6
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	b	.L1700
.L16f6:
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L1700:
	ldr	r0, =0x8c7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L171a
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	b	.L1724
.L171a:
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L1724:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200967c

.thumb_func_start OvlFunc_946_2009740
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_80916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_946_2008474
	cmp	r0, #0
	beq	.L1768
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_946_2008608
.L1768:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009740

.thumb_func_start OvlFunc_946_2009774
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	bl	__Func_80916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_800d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_800c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_800d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L1818
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L1822
.L1818:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	b	.L182a
.L1822:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
.L182a:
	mov	r0, #0xe2
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009774

.thumb_func_start OvlFunc_946_200985c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L18a2
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x10]
	asr	r3, #20
	asr	r2, #20
	sub	r3, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r7
	mov	r1, r8
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L18a2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200985c

.thumb_func_start OvlFunc_946_20098b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L18f6
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	sub	r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L18f6:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20098b0

.thumb_func_start OvlFunc_946_2009904
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009904

.thumb_func_start OvlFunc_946_200991c
	push	{lr}
	mov	r0, #8
	mov	r1, #0x11
	mov	r2, #0x1e
	mov	r3, #0x15
	bl	OvlFunc_946_200985c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0x1f
	mov	r3, #0x16
	bl	OvlFunc_946_200985c
	mov	r0, #0xb
	mov	r1, #0x14
	mov	r2, #0x1e
	mov	r3, #0x17
	bl	OvlFunc_946_20098b0
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #0x1e
	mov	r3, #0x18
	bl	OvlFunc_946_20098b0
	mov	r0, #0xd
	mov	r1, #0x16
	mov	r2, #0x1e
	mov	r3, #0x19
	bl	OvlFunc_946_20098b0
	mov	r0, #0xf
	mov	r1, #0x17
	mov	r2, #0x1e
	mov	r3, #0x1a
	bl	OvlFunc_946_20098b0
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x1f
	bl	OvlFunc_946_200985c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x1f
	mov	r3, #0x20
	bl	OvlFunc_946_200985c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x21
	bl	OvlFunc_946_200985c
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #0x22
	bl	OvlFunc_946_20098b0
	mov	r0, #0xe
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #0x23
	bl	OvlFunc_946_20098b0
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	mov	r3, #0x24
	bl	OvlFunc_946_20098b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200991c

