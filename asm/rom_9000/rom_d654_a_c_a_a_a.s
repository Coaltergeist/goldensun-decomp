	.include "macros.inc"

.thumb_func_start Func_800d6a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #4
	ldrsh	r6, [r5, r1]
	ldr	r2, [r5]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r3, [r3, #4]
	bl	_call_via_r3
	cmp	r0, #0
	beq	.Ld6c0
	mov	r0, #0
	b	.Ld6d0
.Ld6c0:
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5, #4]
	cmp	r3, r6
	bne	.Ld6ce
	add	r3, r2, #2
	strh	r3, [r5, #4]
.Ld6ce:
	mov	r0, #1
.Ld6d0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_800d6a4

.thumb_func_start Func_800d6d8
	push	{lr}
	mov	r2, r0
	add	r2, #0x5e
	mov	r3, #0
	strh	r3, [r2]
	cmp	r1, #0
	bne	.Ld6ec
	b	.Ld702
.Ld6e8:
	add	r0, #1
	b	.Ld704
.Ld6ec:
	ldr	r3, =0xbfffffff
	ldr	r4, =0x3ff
	ldr	r2, [r0]
	and	r1, r3
	mov	r0, #0
.Ld6f6:
	ldmia	r2!, {r3}
	cmp	r3, r1
	beq	.Ld6e8
	add	r0, #1
	cmp	r0, r4
	ble	.Ld6f6
.Ld702:
	mov	r0, #0
.Ld704:
	pop	{r1}
	bx	r1
.func_end Func_800d6d8

.thumb_func_start Func_800d710
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r4}
	ldr	r1, [r3]
	ldr	r3, =0xffff
	cmp	r4, r3
	beq	.Ld742
	mov	r0, r5
	add	r0, #0x5d
	ldrb	r2, [r0]
	add	r2, #1
	strb	r2, [r0]
	lsl	r3, r4, #16
	lsl	r2, #24
	lsr	r2, #24
	asr	r3, #16
	cmp	r2, r3
	bge	.Ld74a
	mov	r0, r5
.Ld742:
	bl	Func_800d6d8
	strh	r0, [r5, #4]
	b	.Ld754
.Ld74a:
	mov	r3, #0
	strb	r3, [r0]
	ldrh	r3, [r5, #4]
	add	r3, #3
	strh	r3, [r5, #4]
.Ld754:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_800d710

