	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ff58  @ 0x0801ff58
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	ldr	r3, =iwram_3001f2c
	mov	r8, r2
	mov	r2, #0xfa
	lsl	r2, #17
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, #0x9a
	lsl	r2, #1
	sub	sp, #0x1c
	add	r7, r3, r2
	sub	r2, #0x20
	add	r4, sp, #4
	add	r6, sp, #0xc
	add	r5, r3, r2
.L1ff7e:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L1ffb6
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	str	r3, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, r10
	str	r3, [r6, #4]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r6
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.L1ffb6:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r7, #2
	add	r5, #4
	cmp	r2, #3
	ble	.L1ff7e
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ff58
