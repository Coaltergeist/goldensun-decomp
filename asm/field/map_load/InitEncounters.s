	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitEncounters  @ 0x0808ace0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gState
	ldr	r3, [r3]
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r4, [r3, r1]
	mov	r11, r4
	mov	r4, #0xe1
	lsl	r4, #1
	add	r3, r2, r4
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r6, #0xd0
	sub	sp, #8
	lsl	r6, #1
	mov	r3, #0
	mov	r9, r1
	add	r6, r10
	ldr	r5, =gMapEncounters
	mov	r7, #0
	str	r3, [sp, #4]
	cmp	r0, #0
	beq	.L8ad80
	mov	r1, #1
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	neg	r1, r1
	ldrh	r2, [r5]
	cmp	r3, r1
	beq	.L8ad80
	mov	r8, r1
	ldr	r1, =0x7fff
.L8ad34:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, r11
	bne	.L8ad74
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, r8
	beq	.L8ad48
	cmp	r3, r9
	bne	.L8ad74
.L8ad48:
	ldrh	r0, [r5, #4]
	mov	r3, r1
	and	r3, r0
	cmp	r3, r1
	beq	.L8ad62
	lsl	r0, #17
	asr	r0, #17
	str	r1, [sp]
	bl	_GetFlag
	ldr	r1, [sp]
	cmp	r0, #0
	bne	.L8ad74
.L8ad62:
	ldrb	r3, [r5, #5]
	lsl	r3, #24
	asr	r3, #31
	lsl	r3, #16
	asr	r3, #16
	mov	r1, #6
	ldrsh	r7, [r5, r1]
	str	r3, [sp, #4]
	b	.L8ad80
.L8ad74:
	add	r5, #8
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	ldrh	r2, [r5]
	cmp	r3, r8
	bne	.L8ad34
.L8ad80:
	mov	r3, #0
	strb	r3, [r6]
	add	r6, #1
	mov	r3, #0
.L8ad88:
	strb	r7, [r6]
	add	r6, #1
	cmp	r7, #0
	beq	.L8ad92
	add	r7, #1
.L8ad92:
	add	r3, #1
	cmp	r3, #6
	bls	.L8ad88
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.L8adb0
	ldr	r0, =0x1a1
	mov	r2, #0xd0
	add	r0, r10
	ldrb	r3, [r0]
	lsl	r2, #1
	add	r2, r10
	mov	r1, #0
	strb	r3, [r2]
	strb	r1, [r0]
.L8adb0:
	mov	r2, #0xd4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0
	str	r3, [r2]
	mov	r2, #0xd6
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #13
	str	r3, [r2]
	bl	Func_808b25c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitEncounters

