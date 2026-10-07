	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a19a0  @ 0x080a19a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x1c
	ldr	r5, [r3]
	bl	_GetPartySize
	lsl	r0, #16
	lsr	r0, #16
	mov	r10, r0
	mov	r4, #0
	cmp	r4, r10
	bge	.La1a2e
	add	r2, sp, #4
	mov	r8, r2
	mov	r3, #0x9a
	mov	r2, #0x8a
	lsl	r3, #1
	lsl	r2, #1
	add	r7, r5, r3
	add	r6, sp, #0xc
	add	r5, r2
.La19d0:
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	ldr	r0, [r5]
	mov	r2, #0xf1
	lsl	r3, #16
	lsl	r2, #17
	sub	r1, r2, r3
	cmp	r0, #0
	beq	.La1a24
	ldrb	r3, [r0, #9]
	mov	r12, r3
	mov	r3, #0xd
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	strb	r3, [r0, #9]
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	mov	r2, r8
	str	r3, [r2, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r1, [r6, #4]
	str	r3, [r6]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r1, r6
	mov	r2, r8
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.La1a24:
	add	r4, #1
	add	r7, #2
	add	r5, #4
	cmp	r4, r10
	blt	.La19d0
.La1a2e:
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a19a0

