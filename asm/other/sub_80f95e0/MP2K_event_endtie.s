	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MP2K_event_endtie  @ 0x080fa16c
	push	{r4, r5}
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	cmp	r3, #0x80
	bcs	.Lfa17e
	strb	r3, [r1, #5]
	add	r2, #1
	str	r2, [r1, #0x40]
	b	.Lfa180
.Lfa17e:
	ldrb	r3, [r1, #5]
.Lfa180:
	ldr	r1, [r1, #0x20]
	cmp	r1, #0
	beq	.Lfa1a8
	mov	r4, #0x83
	mov	r5, #0x40
.Lfa18a:
	ldrb	r2, [r1]
	tst	r2, r4
	beq	.Lfa1a2
	tst	r2, r5
	bne	.Lfa1a2
	ldrb	r0, [r1, #0x11]
	cmp	r0, r3
	bne	.Lfa1a2
	mov	r0, #0x40
	orr	r2, r0
	strb	r2, [r1]
	b	.Lfa1a8
.Lfa1a2:
	ldr	r1, [r1, #0x34]
	cmp	r1, #0
	bne	.Lfa18a
.Lfa1a8:
	pop	{r4, r5}
	bx	lr
.func_end MP2K_event_endtie

