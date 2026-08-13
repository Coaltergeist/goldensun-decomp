	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807808c  @ 0x0807808c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	GetPartySize
	mov	r6, #0
	mov	r7, r0
	cmp	r6, r7
	bge	.L78132
.L780a0:
	mov	r1, #0xfc
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r0, [r2, r3]
	bl	GetUnit
	mov	r5, r0
	ldrh	r1, [r5, #0x34]
	ldrh	r3, [r5, #0x36]
	strh	r1, [r5, #0x38]
	strh	r3, [r5, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L780d2
	mov	r3, #0
	cmp	r0, #0
	blt	.L780d2
	mov	r3, r0
.L780d2:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L780e6
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L780e6
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L780e6:
	mov	r3, #0x3a
	ldrsh	r0, [r5, r3]
	mov	r2, #0x36
	ldrsh	r1, [r5, r2]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78104
	mov	r3, #0
	cmp	r0, #0
	blt	.L78104
	mov	r3, r0
.L78104:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L78118
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L78118
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L78118:
	mov	r2, r8
	cmp	r2, #1
	bne	.L7812c
	ldr	r1, =0x131
	mov	r2, #0
	add	r3, r5, r1
	add	r1, #0xf
	strb	r2, [r3]
	add	r3, r5, r1
	strb	r2, [r3]
.L7812c:
	add	r6, #1
	cmp	r6, r7
	blt	.L780a0
.L78132:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_807808c
