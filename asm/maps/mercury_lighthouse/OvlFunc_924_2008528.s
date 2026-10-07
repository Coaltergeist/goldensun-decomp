	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2008528
	push	{r5, r6, lr}
	mov	r4, r3
	ldr	r3, [sp, #0xc]
	mov	r12, r3
	ldr	r3, =iwram_3001e70
	mov	r6, r1
	mov	r1, r2
	ldr	r2, [r3]
	ldr	r5, [sp, #0x10]
	cmp	r2, #0
	beq	.Lm924_57c
	cmp	r0, #2
	bhi	.Lm924_552
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.Lm924_554
.Lm924_552:
	ldr	r0, =gBuffer
.Lm924_554:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.Lm924_57c
.Lm924_562:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.Lm924_576
.Lm924_56c:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.Lm924_56c
.Lm924_576:
	add	r1, #1
	cmp	r1, r12
	bcc	.Lm924_562
.Lm924_57c:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_2008528

