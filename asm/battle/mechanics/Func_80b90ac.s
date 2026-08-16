	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b90ac  @ 0x080b90ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r0, #3
	mov	r1, r5
	bl	Func_80b6c08
	cmp	r0, #0
	ble	.Lb90e6
	mov	r6, #0
	mov	r7, r5
	mov	r8, r6
	mov	r5, r0
.Lb90ca:
	ldrh	r0, [r6, r7]
	bl	_GetUnit
	ldr	r2, =0x12b
	add	r3, r0, r2
	mov	r2, r8
	ldrh	r0, [r6, r7]
	strb	r2, [r3]
	sub	r5, #1
	bl	_CalcStats
	add	r6, #2
	cmp	r5, #0
	bne	.Lb90ca
.Lb90e6:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b90ac
