	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b98b4  @ 0x080b98b4
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r14, r1
	mov	r7, #0x1f
.Lb98c0:
	lsl	r3, #4
	mov	r6, #0
	mov	r12, r3
.Lb98c6:
	mov	r2, r12
	add	r3, r2, r6
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r0, r3, #1
	add	r3, r0, r1
	ldrh	r3, [r3]
	lsr	r4, r3, #10
	and	r4, r7
	lsr	r2, r3, #5
	mov	r1, r7
	and	r2, r7
	and	r1, r3
	add	r4, r5
	add	r2, r5
	add	r1, r5
	cmp	r4, #0x1f
	ble	.Lb98ec
	mov	r4, #0x1f
.Lb98ec:
	cmp	r2, #0x1f
	ble	.Lb98f2
	mov	r2, #0x1f
.Lb98f2:
	cmp	r1, #0x1f
	ble	.Lb98f8
	mov	r1, #0x1f
.Lb98f8:
	cmp	r4, #0
	bge	.Lb98fe
	mov	r4, #0
.Lb98fe:
	cmp	r2, #0
	bge	.Lb9904
	mov	r2, #0
.Lb9904:
	cmp	r1, #0
	bge	.Lb990a
	mov	r1, #0
.Lb990a:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Lb98c6
	mov	r2, #1
	add	r14, r2
	mov	r1, r14
	mov	r3, #5
	cmp	r1, #1
	ble	.Lb98c0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b98b4
