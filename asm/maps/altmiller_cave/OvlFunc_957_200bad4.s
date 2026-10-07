	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200bad4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	bl	__Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x202108
	mov	r8, r3
	bl	__Func_80b0840
	mov	r3, #0xfc
	add	r6, sp, #8
	lsl	r3, #17
	str	r3, [r6]
	mov	r3, #0xc0
	lsl	r3, #13
	str	r3, [r6, #4]
	mov	r3, #0x90
	lsl	r3, #16
	mov	r0, r6
	str	r3, [r6, #8]
	bl	__Func_80974d8
	mov	r5, r8
	add	r5, #0x58
	mov	r7, #0x17
.Lm957_3b0c:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_809ba90
	mov	r0, r5
	ldr	r1, =OvlFunc_957_200ba30
	bl	__Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	__Func_809ba70
	bl	__Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	__Sprite_SetColorswap
	bl	__Random
	mov	r1, #3
	bl	_udivsi3_RAM
	mov	r3, #0xc0
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	__WaitFrames
	add	r5, #0x48
	cmp	r7, #0
	bge	.Lm957_3b0c
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #8
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_8010704
	mov	r0, #0x32
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r2, r8
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.Lm957_3bac:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lm957_3bb6
	strb	r1, [r2]
.Lm957_3bb6:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.Lm957_3bac
	bl	__Func_8012350
	bl	__Func_80b0894
	bl	__Func_80958e4
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200bad4

