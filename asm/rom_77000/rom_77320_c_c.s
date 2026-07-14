	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80782a0  @ 0x080782a0
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #0x34
	ldrsh	r3, [r5, r2]
	mov	r0, r3
	cmp	r1, r3
	bgt	.L782b6
	mov	r0, #0
	cmp	r1, #0
	blt	.L782b6
	mov	r0, r1
.L782b6:
	strh	r0, [r5, #0x38]
	lsl	r0, #16
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	asr	r0, #2
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L782d4
	mov	r3, #0
	cmp	r0, #0
	blt	.L782d4
	mov	r3, r0
.L782d4:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L782e8
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L782e8
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L782e8:
	mov	r3, #0x3a
	ldrsh	r0, [r5, r3]
	mov	r2, #0x36
	ldrsh	r1, [r5, r2]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78306
	mov	r3, #0
	cmp	r0, #0
	blt	.L78306
	mov	r3, r0
.L78306:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L7831a
	mov	r2, #0x3a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L7831a
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L7831a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80782a0

	.section .rodata
	.global .L7a828

.L7a828:
	.incrom 0x7a828, 0x7a830
