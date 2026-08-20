	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_BlitLuckyWheelsAnim  @ 0x080f60a0
	push	{r5, lr}
	ldr	r0, =iwram_3001eec
	ldr	r2, =0x7824
	ldr	r5, [r0]
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lf6116
	sub	r2, #0xa4
	add	r3, r5, r2
	ldr	r3, [r3]
	ldr	r4, [r0, #4]
	cmp	r3, #1
	beq	.Lf60c2
	cmp	r3, #2
	beq	.Lf60e2
	b	.Lf6106
.Lf60c2:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, =0x6003500
	ldr	r2, =0x84002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x7784
	mov	r1, #0x80
	add	r3, r5, r2
	ldr	r2, [r3]
	mov	r0, r4
	ldr	r3, =Func_80008d8
	lsl	r1, #8
	bl	_call_via_r3
	b	.Lf6106
.Lf60e2:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lf60fa
	mov	r2, #0x80
	ldr	r1, =0x6003500
	lsl	r2, #8
	mov	r0, r4
	bl	BlitFadeAlt_Div2
	b	.Lf6106
.Lf60fa:
	mov	r2, #0x80
	ldr	r1, =0x6003500
	lsl	r2, #8
	mov	r0, r4
	bl	BlitFadeAlt_Div4
.Lf6106:
	ldr	r3, =0x7824
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, =0x7820
	add	r2, r5, r3
	mov	r3, #1
	b	.Lf611e
.Lf6116:
	ldr	r3, =0x7820
	add	r2, r5, r3
	ldr	r3, [r2]
	add	r3, #1
.Lf611e:
	str	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Task_BlitLuckyWheelsAnim

