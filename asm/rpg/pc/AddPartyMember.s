	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AddPartyMember  @ 0x0807961c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	GetPartySize
	mov	r5, r0
	mov	r0, r6
	bl	SetFlag
	mov	r2, #0
	cmp	r2, r5
	bge	.L7964e
	ldr	r0, =gState
	mov	r3, #0xfc
	lsl	r3, #1
	add	r1, r0, r3
.L7963a:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, r6
	beq	.L7964a
	add	r2, #1
	cmp	r2, r5
	blt	.L7963a
	b	.L79650
.L7964a:
	mov	r0, r5
	b	.L7965a
.L7964e:
	ldr	r0, =gState
.L79650:
	mov	r1, #0xfc
	lsl	r1, #1
	add	r3, r2, r1
	strb	r6, [r0, r3]
	add	r0, r5, #1
.L7965a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end AddPartyMember

