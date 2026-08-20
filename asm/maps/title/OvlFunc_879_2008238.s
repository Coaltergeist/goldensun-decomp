	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_879_2008238
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L650
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldr	r4, =.L6a0
	ldrh	r3, [r3, #2]
	mov	r2, #0x88
	sub	sp, #4
	mov	r6, r4
	lsr	r7, r3, #5
	mov	r5, #0
	mov	r8, r2
.L25a:
	mov	r2, #0x12
	sub	r2, r5
	lsl	r2, #3
	mov	r3, #0xe8
	sub	r3, r2
	mov	r2, #0
	stmia	r6!, {r2}
	mov	r1, r8
	lsl	r3, #16
	mov	r2, #0x84
	orr	r3, r1
	lsl	r2, #8
	orr	r3, r2
	stmia	r6!, {r3}
	mov	r3, #0xf0
	lsl	r3, #8
	orr	r3, r7
	stmia	r6!, {r3}
	ldr	r3, =.L68c
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	sub	r1, r2, r5
	cmp	r1, #0
	bge	.L294
	mov	r1, #0
.L294:
	cmp	r1, #2
	bgt	.L2a6
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2a6
	mov	r1, #0
.L2a6:
	cmp	r1, #0
	beq	.L2b8
	mov	r0, r4
	mov	r1, #0xff
	add	r4, #0xc
	str	r4, [sp]
	bl	__Func_8003dec
	ldr	r4, [sp]
.L2b8:
	add	r5, #1
	add	r7, #2
	cmp	r5, #0x11
	ble	.L25a
	ldr	r2, =.L68c
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_879_2008238

