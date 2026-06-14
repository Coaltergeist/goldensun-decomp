	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80979a4  @ 0x080979a4
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r1, #0xb4
	lsl	r1, #17
	mov	r5, r2
	bl	Func_8097a10
	ldr	r2, =0x3bffff
	mov	r4, r0
	cmp	r4, r2
	bgt	.L979c2
	ldr	r3, =Func_8000888
	mov	r0, r5
	mov	r1, r4
	b	.L979e0
.L979c2:
	ldr	r1, =0xffc40000
	add	r3, r4, r1
	mov	r1, #0xf0
	lsl	r1, #15
	mov	r0, r5
	cmp	r3, r1
	bcc	.L979f4
	ldr	r1, =0xff4c0000
	add	r3, r4, r1
	cmp	r3, r2
	bhi	.L979f2
	mov	r1, #0xf0
	lsl	r1, #16
	ldr	r3, =Func_8000888
	sub	r1, r4
	.align	2, 0
.L979e0:
	mov	r12, pc
	bx	r3
	mov	r1, r0
	mov	r0, #0xf0
	ldr	r3, =Func_80008ac
	lsl	r0, #14
	bl	_call_via_r3
	b	.L979f4
.L979f2:
	mov	r0, r6
.L979f4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80979a4

.thumb_func_start Func_8097a10  @ 0x08097a10
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L97a42
	mov	r3, #0xf0
	lsl	r3, #24
	and	r3, r5
	cmp	r3, #0
	beq	.L97a28
	neg	r5, r5
.L97a28:
	mov	r1, r6
	ldr	r3, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r3
	ldr	r3, =0xffff0000
	ldr	r4, =Func_8000888
	and	r0, r3
	mov	r1, r5
	.call_via r4
	sub	r0, r6, r0
.L97a42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8097a10

.thumb_func_start Func_8097a54  @ 0x08097a54
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L97a72
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L97a72
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L97a72
	ldr	r1, =.La0128
	bl	_Actor_SetScript
.L97a72:
	pop	{r0}
	bx	r0
.func_end Func_8097a54

.thumb_func_start Func_8097a7c  @ 0x08097a7c
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea4
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r2, .L97ac4	@ 0x739c
	ldr	r3, =0x50001e2
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, #0x90
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #3
	ldr	r0, =Func_8097868
	bl	StartTask
	b	.L97ad8

	.align	2, 0
.L97ac4:
	.word	0x739c
	.pool

.L97ad8:
	pop	{r0}
	bx	r0
.func_end Func_8097a7c

.thumb_func_start Func_8097adc  @ 0x08097adc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r0, =Func_8097868
	ldr	r5, [r3]
	bl	StopTask
	ldr	r2, =0x50001e2
	ldr	r3, .L97b1c	@ 0x7fff
	ldr	r6, .L97b20	@ 0
	strh	r3, [r2]
	ldr	r3, =0x50001e6
	strh	r6, [r3]
	ldr	r3, .L97b24	@ 0x294a
	add	r2, #0x14
	strh	r3, [r2]
	ldr	r3, .L97b28	@ 0x5294
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, =0x205
	ldr	r3, =gState
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	_SetUIColor
	ldr	r3, =0xea4
	add	r5, r3
	strb	r6, [r5]
	b	.L97b4c

	.align	2, 0
.L97b1c:
	.word	0x7fff
.L97b20:
	.word	0
.L97b24:
	.word	0x294a
.L97b28:
	.word	0x5294
	.pool

.L97b4c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8097adc

	.section .rodata
	.global .La0108

.La0108:
	.incrom 0xa0108, 0xa0128
.La0128:
	.incrom 0xa0128, 0xa012c
