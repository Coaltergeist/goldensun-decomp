	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aac84  @ 0x080aac84
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r12, r1
	mov	r7, #0x1f
.Laac90:
	lsl	r3, #4
	mov	r6, #0
	mov	r14, r3
.Laac96:
	mov	r2, r14
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
	ble	.Laacbc
	mov	r4, #0x1f
.Laacbc:
	cmp	r2, #0x1f
	ble	.Laacc2
	mov	r2, #0x1f
.Laacc2:
	cmp	r1, #0x1f
	ble	.Laacc8
	mov	r1, #0x1f
.Laacc8:
	cmp	r4, #0
	bge	.Laacce
	mov	r4, #0
.Laacce:
	cmp	r2, #0
	bge	.Laacd4
	mov	r2, #0
.Laacd4:
	cmp	r1, #0
	bge	.Laacda
	mov	r1, #0
.Laacda:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Laac96
	mov	r2, r12
	mov	r3, #5
	cmp	r2, #0
	beq	.Laacfc
	mov	r5, #0xc
	mov	r3, #7
	neg	r5, r5
.Laacfc:
	mov	r1, #1
	add	r12, r1
	mov	r2, r12
	cmp	r2, #2
	ble	.Laac90
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80aac84

