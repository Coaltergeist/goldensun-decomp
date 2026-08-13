	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8077cb8  @ 0x08077cb8
	push	{r5, lr}
	ldr	r0, =2
	bl	GetFile
	ldrb	r2, [r0]
	lsl	r3, r2, #2
	ldr	r1, =0xfffffe20
	add	r3, r2
	lsl	r3, #1
	add	r0, #1
	add	r5, r3, r1
	ldrb	r3, [r0]
	add	r0, #1
	ldrb	r2, [r0]
	add	r3, r5, r3
	mov	r5, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r0, #1
	add	r4, r3, r1
	ldrb	r3, [r0]
	add	r0, #1
	ldrb	r2, [r0]
	add	r3, r4, r3
	mov	r4, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r2, r3, r1
	ldrb	r3, [r0, #1]
	sub	r5, #0x30
	add	r3, r2, r3
	mov	r2, r3
	sub	r4, #0x30
	lsl	r3, r5, #4
	add	r3, r4
	sub	r2, #0x30
	lsl	r3, #6
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #21
	orr	r2, r3
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	asr	r0, r2, #16
	cmp	r3, #0
	beq	.L77d1e
	ldr	r3, =0xffff8000
	orr	r0, r3
.L77d1e:
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8077cb8
