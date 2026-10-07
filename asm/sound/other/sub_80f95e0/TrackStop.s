	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TrackStop  @ 0x080f9ef8
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldrb	r1, [r5]
	mov	r0, #0x80
	tst	r0, r1
	beq	.Lf9f30
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9f2e
	mov	r6, #0
.Lf9f0c:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lf9f26
	ldrb	r0, [r4, #1]
	mov	r3, #7
	and	r0, r3
	beq	.Lf9f24
	ldr	r3, =SOUND_INFO_PTR
	ldr	r3, [r3]
	ldr	r3, [r3, #0x2c]
	bl	Func_80f9ee8
.Lf9f24:
	strb	r6, [r4]
.Lf9f26:
	str	r6, [r4, #0x2c]
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9f0c
.Lf9f2e:
	str	r4, [r5, #0x20]
.Lf9f30:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end TrackStop

