	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start galloc_ewram  @ 0x080048f4
	push	{r5, lr}
	ldr	r4, =gPtrs
	lsl	r5, r0, #2
	ldr	r0, [r4, r5]
	cmp	r0, #0
	bne	.L492a
	add	r3, r1, #3
	lsr	r3, #2
	ldr	r0, [r4]
	lsl	r1, r3, #2
	mov	r3, #0x81
	add	r2, r0, r1
	lsl	r3, #18
	cmp	r2, r3
	bcc	.L4926
	ldr	r0, [r4, #4]
	ldr	r3, =iwram_30077ff
	add	r1, r0, r1
	cmp	r1, r3
	bls	.L4920
	mov	r0, #0
	b	.L492a
.L4920:
	str	r1, [r4, #4]
	str	r0, [r4, r5]
	b	.L492a
.L4926:
	str	r2, [r4]
	str	r0, [r4, r5]
.L492a:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end galloc_ewram

.thumb_func_start Func_8004938  @ 0x08004938
	push	{lr}
	ldr	r1, =gPtrs
	add	r3, r0, #3
	lsr	r3, #2
	ldr	r2, [r1, #4]
	lsl	r0, r3, #2
	ldr	r4, =iwram_30077ff
	add	r3, r2, r0
	cmp	r3, r4
	bls	.L4960
	ldr	r2, [r1]
	mov	r3, #0x81
	add	r0, r2, r0
	lsl	r3, #18
	cmp	r0, r3
	bcc	.L495c
	mov	r0, #0
	b	.L4964
.L495c:
	str	r0, [r1]
	b	.L4962
.L4960:
	str	r3, [r1, #4]
.L4962:
	mov	r0, r2
.L4964:
	pop	{r1}
	bx	r1
.func_end Func_8004938

.thumb_func_start Func_8004970  @ 0x08004970
	push	{lr}
	ldr	r1, =gPtrs
	add	r3, r0, #3
	lsr	r3, #2
	ldr	r2, [r1]
	lsl	r0, r3, #2
	mov	r4, #0x81
	add	r3, r2, r0
	lsl	r4, #18
	cmp	r3, r4
	bcc	.L4998
	ldr	r2, [r1, #4]
	ldr	r3, =iwram_30077ff
	add	r0, r2, r0
	cmp	r0, r3
	bls	.L4994
	mov	r0, #0
	b	.L499c
.L4994:
	str	r0, [r1, #4]
	b	.L499a
.L4998:
	str	r3, [r1]
.L499a:
	mov	r0, r2
.L499c:
	pop	{r1}
	bx	r1
.func_end Func_8004970
