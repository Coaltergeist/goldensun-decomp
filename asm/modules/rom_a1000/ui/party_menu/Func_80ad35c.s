	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ad35c  @ 0x080ad35c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0x80
	mov	r8, r3
	mov	r6, #0x8d
	mov	r3, #0xa2
	mov	r7, #0x89
	sub	sp, #0x1c
	mov	r1, #0
	lsl	r2, #9
	lsl	r6, #2
	lsl	r3, #1
	lsl	r7, #2
	mov	r9, r1
	mov	r11, r2
	add	r4, sp, #4
	add	r5, sp, #0xc
	add	r6, r8
	mov	r10, r3
	add	r7, r8
.Lad392:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.Lad3e4
	mov	r3, r8
	mov	r1, r10
	ldrsh	r1, [r1, r3]
	lsl	r3, r1, #16
	mov	r1, #0xf1
	ldrb	r2, [r0, #9]
	lsl	r1, #17
	sub	r1, r3
	mov	r3, #0xd
	mov	r12, r2
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	mov	r2, r11
	str	r2, [sp, #4]
	strb	r3, [r0, #9]
	str	r2, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	str	r1, [r5, #4]
	str	r3, [r5]
	mov	r2, #8
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r5
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.Lad3e4:
	mov	r1, #1
	add	r9, r1
	mov	r3, #2
	mov	r2, r9
	add	r6, #2
	add	r10, r3
	cmp	r2, #3
	ble	.Lad392
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad35c

