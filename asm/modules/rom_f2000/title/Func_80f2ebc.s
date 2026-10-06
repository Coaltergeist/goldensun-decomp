	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f2ebc  @ 0x080f2ebc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r8, r3
	cmp	r3, #0
	ble	.Lf2efa
	ldr	r1, =divsi3_RAM
	ldr	r2, =0x5ff
	mov	r10, r1
.Lf2ed8:
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	str	r2, [sp]
	sub	r0, r3
	mov	r1, r8
	bl	_call_via_r10
	ldr	r2, [sp]
	sub	r2, #1
	strh	r0, [r5]
	add	r7, #2
	add	r6, #2
	add	r5, #2
	cmp	r2, #0
	bge	.Lf2ed8
.Lf2efa:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f2ebc

