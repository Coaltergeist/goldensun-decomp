	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ba918  @ 0x080ba918
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0xff
	mov	r8, r0
	mov	r7, r1
	mov	r6, #0
	mov	r10, r3
	b	.Lba95e
.Lba92c:
	ldr	r2, [r0, #0x28]
	ldrb	r3, [r2, #0x16]
	mov	r4, r10
	orr	r3, r4
	strb	r3, [r2, #0x16]
	mov	r3, r0
	add	r3, #0x27
	mov	r1, r0
	ldrb	r0, [r3]
	add	r1, #0x2c
	strb	r7, [r2, #5]
	cmp	r0, #1
	ble	.Lba95c
	mov	r5, #0
	mov	r4, #0xff
	sub	r0, #1
.Lba94c:
	ldmia	r1!, {r2}
	ldrb	r3, [r2, #0x16]
	sub	r0, #1
	orr	r3, r4
	strb	r5, [r2, #5]
	strb	r3, [r2, #0x16]
	cmp	r0, #0
	bne	.Lba94c
.Lba95c:
	add	r6, #1
.Lba95e:
	mov	r0, r8
	mov	r1, r6
	bl	Func_80b7f70
	cmp	r0, #0
	bne	.Lba92c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ba918
