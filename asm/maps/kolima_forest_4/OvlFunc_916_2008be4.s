	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008be4
	push	{r5, r6, r7, lr}
	ldr	r7, =gBuffer
	ldr	r6, =ewram_202c000
	mov	r5, r2
	mov	r2, #0
.Lm916_bee:
	lsl	r3, r1, #7
	add	r3, r0, r3
	lsl	r3, #2
	add	r4, r3, r7
	ldrb	r3, [r4, #2]
	cmp	r3, #0xff
	beq	.Lm916_c06
	ldrb	r3, [r4, #3]
	lsl	r3, #2
	ldrb	r3, [r3, r6]
	cmp	r3, #0
	beq	.Lm916_c0c
.Lm916_c06:
	mov	r0, #1
	neg	r0, r0
	b	.Lm916_c1e
.Lm916_c0c:
	cmp	r5, #0
	bne	.Lm916_c14
	add	r0, #1
	b	.Lm916_c16
.Lm916_c14:
	add	r1, #1
.Lm916_c16:
	add	r2, #1
	cmp	r2, #3
	ble	.Lm916_bee
	mov	r0, #0
.Lm916_c1e:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_916_2008be4

