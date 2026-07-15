	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_1cf48, "ax", %progbits

.thumb_func_start Func_801d014  @ 0x0801d014
	push	{lr}
	mov	r1, #0xc5
	lsl	r1, #3
	mov	r0, #0x14
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500018a
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =gState
	ldr	r0, =0x205
	add	r3, r1, r0
	ldr	r0, =0x594
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x599
	ldr	r0, =0x206
	add	r2, r4, r3
	mov	r3, #0x18
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x595
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59a
	mov	r0, #0x83
	add	r2, r4, r3
	lsl	r0, #2
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x596
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59b
	ldr	r0, =0x20a
	add	r2, r4, r3
	mov	r3, #3
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x597
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r2, =0x59c
	mov	r0, #2
	add	r3, r4, r2
	strb	r0, [r3]
	ldr	r3, =0x22a
	add	r1, r3
	ldrb	r2, [r1]
	mov	r1, #0xb3
	lsl	r1, #3
	add	r3, r4, r1
	strb	r2, [r3]
	ldr	r2, =0x59d
	mov	r1, #0xc8
	add	r4, r2
	strb	r0, [r4]
	lsl	r1, #4
	ldr	r0, =Func_801cf48
	bl	StartTask
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_801d014

