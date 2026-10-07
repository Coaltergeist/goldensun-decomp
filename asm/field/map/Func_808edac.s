	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808edac  @ 0x0808edac
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	GetMapActorIndex
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L8ee00
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r0, r3, r2
	ldr	r5, [r0]
	cmp	r5, #0
	beq	.L8ee00
	cmp	r6, r1
	bne	.L8ede0
	ldrb	r3, [r0, #6]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	add	r6, r3, r2
.L8ede0:
	cmp	r7, r1
	bne	.L8edee
	ldrb	r3, [r0, #7]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	add	r7, r3, r2
.L8edee:
	str	r6, [r5, #8]
	str	r7, [r5, #0x10]
	mov	r0, #0
	mov	r1, r6
	mov	r2, r7
	bl	_Func_8011f54
	str	r0, [r5, #0x14]
	str	r0, [r5, #0xc]
.L8ee00:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808edac

