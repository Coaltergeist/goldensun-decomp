	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8f58  @ 0x080b8f58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x1f
	ldr	r6, =0x50001c0
	mov	r8, r1
	mov	r7, #0xf
.Lb8f66:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #10
	ldrh	r5, [r6, #0x20]
	bl	cos
	mov	r3, r0
	mov	r0, #0x80
	lsl	r0, #9
	sub	r0, r3
	ldr	r1, =0x2aaa
	bl	__divsi3
	mov	r2, r8
	lsr	r3, r5, #10
	and	r3, r2
	mov	r1, r8
	lsr	r2, r5, #5
	and	r2, r1
	add	r3, r0
	and	r1, r5
	add	r2, r0
	add	r1, r0
	cmp	r3, #0x1f
	bls	.Lb8f9e
	mov	r3, #0x1f
.Lb8f9e:
	cmp	r2, #0x1f
	bls	.Lb8fa4
	mov	r2, #0x1f
.Lb8fa4:
	cmp	r1, #0x1f
	bls	.Lb8faa
	mov	r1, #0x1f
.Lb8faa:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	sub	r7, #1
	strh	r3, [r6]
	add	r6, #2
	cmp	r7, #0
	bge	.Lb8f66
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b8f58
