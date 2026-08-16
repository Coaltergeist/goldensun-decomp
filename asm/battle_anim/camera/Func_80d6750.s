	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80d6750  @ 0x080d6750
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x24
	ldrsh	r3, [r0, r1]
	sub	sp, #0x20
	mov	r2, #0
	cmp	r3, #0x7f
	ble	.Ld678e
	add	r3, sp, #4
	mov	r8, r3
	mov	r6, #0
	mov	r7, r8
.Ld676a:
	mov	r5, r6
	add	r5, #0x80
	mov	r0, r5
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	ble	.Ld6786
	strh	r5, [r7]
	add	r2, #1
	add	r7, #2
.Ld6786:
	add	r6, #1
	cmp	r6, #6
	bne	.Ld676a
	b	.Ld67b8
.Ld678e:
	add	r3, sp, #4
	mov	r8, r3
	mov	r1, r8
	lsl	r3, r2, #1
	mov	r6, #0
	add	r5, r3, r1
.Ld679a:
	mov	r0, r6
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	ble	.Ld67b2
	strh	r6, [r5]
	add	r2, #1
	add	r5, #2
.Ld67b2:
	add	r6, #1
	cmp	r6, #8
	bne	.Ld679a
.Ld67b8:
	ldr	r3, =0xff
	lsl	r2, #1
	mov	r1, r8
	strh	r3, [r1, r2]
	mov	r0, r8
	mov	r1, #0
	bl	_CreateBattleSpriteOverlays
	add	sp, #0x20
	b	.Ld67d0

	.pool_aligned

.Ld67d0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80d6750
