	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b78e4  @ 0x080b78e4
	push	{r5, lr}
	mov	r5, r1
	bl	_GetUnit
	mov	r2, r0
	ldr	r0, =0x131
	add	r3, r2, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r1, #0
	cmp	r3, #1
	bne	.Lb7900
	mov	r1, #1
.Lb7900:
	cmp	r3, #2
	bne	.Lb7906
	orr	r1, r3
.Lb7906:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7916
	mov	r3, #0x20
	orr	r1, r3
.Lb7916:
	ldr	r0, =0x13b
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7938
	mov	r3, #4
	sub	r0, #0x13
	orr	r1, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0x79
	beq	.Lb7932
	cmp	r3, #0x94
	bne	.Lb7938
.Lb7932:
	mov	r3, #5
	neg	r3, r3
	and	r1, r3
.Lb7938:
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7946
	mov	r3, #8
	orr	r1, r3
.Lb7946:
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7956
	mov	r3, #0x40
	orr	r1, r3
.Lb7956:
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7966
	mov	r3, #0x10
	orr	r1, r3
.Lb7966:
	ldr	r3, =0x141
	add	r2, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lb797a
	mov	r2, r3
	add	r2, #6
	mov	r3, #1
	lsl	r3, r2
	orr	r1, r3
.Lb797a:
	strh	r1, [r5, #0x1c]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b78e4

