	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ba38  @ 0x0808ba38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2001124
	mov	r2, #0xe0
	lsl	r2, #4
	add	r2, r7
	mov	r11, r2
	mov	r3, #0xe2
	mov	r2, #0xe4
	lsl	r3, #4
	lsl	r2, #4
	add	r3, r7
	add	r2, r7
	sub	sp, #4
	mov	r9, r3
	mov	r10, r2
	mov	r3, #0
	mov	r2, #0x42
	str	r2, [sp]
	mov	r8, r3
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xcf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r7
	sub	r6, #0x20
	cmp	r3, #3
	bne	.L8ba84
	mov	r3, #8
	str	r3, [sp]
.L8ba84:
	ldr	r2, [sp]
	mov	r5, #0
	cmp	r5, r2
	bge	.L8baf2
.L8ba8c:
	mov	r0, r5
	bl	GetFieldActor
	mov	r4, r0
	cmp	r4, #0
	beq	.L8baea
	strb	r5, [r6]
	ldr	r3, =REG_DMA3SAD
	add	r6, #1
	mov	r1, r7
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r4
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L8bac4
	ldr	r2, [r4, #0x50]
	mov	r3, r2
	add	r3, #0x24
	ldrb	r4, [r3]
	add	r3, #2
	ldrb	r1, [r3]
	ldrb	r3, [r2, #9]
	lsl	r3, #28
	lsr	r0, r3, #30
	b	.L8baca
.L8bac4:
	mov	r4, #0
	mov	r1, #0
	mov	r0, #0
.L8baca:
	mov	r3, r11
	strb	r4, [r3]
	mov	r3, r9
	mov	r2, #1
	strb	r1, [r3]
	mov	r3, #1
	add	r11, r2
	add	r9, r2
	add	r8, r3
	mov	r2, r10
	strb	r0, [r2]
	mov	r2, r8
	add	r10, r3
	add	r7, #0x70
	cmp	r2, #0x1f
	bhi	.L8baf2
.L8baea:
	ldr	r3, [sp]
	add	r5, #1
	cmp	r5, r3
	blt	.L8ba8c
.L8baf2:
	mov	r5, r8
	cmp	r5, #0x1f
	bgt	.L8bb08
	mov	r3, #0x20
	mov	r2, #0xff
	sub	r5, r3, r5
.L8bafe:
	sub	r5, #1
	strb	r2, [r6]
	add	r6, #1
	cmp	r5, #0
	bne	.L8bafe
.L8bb08:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808ba38

.thumb_func_start Func_808bb2c  @ 0x0808bb2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_2001124
	mov	r2, #0x20
	mov	r8, r1
	neg	r2, r2
	add	r2, r8
	mov	r3, #0xe0
	mov	r1, #0xe2
	mov	r10, r2
	lsl	r3, #4
	lsl	r1, #4
	mov	r2, #0xe4
	sub	sp, #8
	add	r3, r8
	add	r1, r8
	lsl	r2, #4
	str	r3, [sp, #4]
	str	r1, [sp]
	add	r2, r8
	mov	r1, r10
	mov	r11, r2
	mov	r2, #0x1f
	neg	r2, r2
	ldrb	r7, [r1]
	mov	r3, #0
	add	r2, r8
	mov	r9, r3
	mov	r10, r2
	cmp	r7, #0xff
	beq	.L8bc18
.L8bb74:
	mov	r0, r7
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L8bbf2
	ldr	r6, [r5, #0x50]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r8
	mov	r1, r5
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [sp, #4]
	ldrb	r1, [r3]
	cmp	r1, #0
	beq	.L8bb9c
	mov	r0, r5
	bl	_Actor_SetAnim
.L8bb9c:
	ldr	r2, [sp]
	mov	r0, r5
	ldrb	r1, [r2]
	bl	_Actor_SetSpriteFlags
	mov	r3, r11
	ldrb	r1, [r3]
	mov	r3, #3
	ldrb	r2, [r6, #9]
	and	r1, r3
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, #2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r6, #9]
	ldrb	r2, [r6, #0x15]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	orr	r3, r1
	strb	r3, [r6, #0x15]
	ldr	r1, =ewram_2000434
	ldr	r3, [r1]
	str	r6, [r5, #0x50]
	cmp	r7, r3
	bne	.L8bbf2
	ldr	r2, =iwram_3001ebc
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #1
	add	r3, r1
	ldr	r1, =iwram_3001e70
	ldr	r2, [r3]
	ldr	r3, [r1]
	ldr	r1, [r3]
	ldr	r3, [r5, #0xc]
	mov	r0, r5
	str	r3, [r2, #0x14]
	str	r3, [r2, #0xc]
	str	r3, [r1, #4]
	bl	_Actor_Stop
.L8bbf2:
	mov	r2, #0x70
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	add	r8, r2
	mov	r2, #1
	add	r3, #1
	add	r9, r2
	str	r3, [sp, #4]
	add	r1, #1
	mov	r3, r9
	str	r1, [sp]
	add	r11, r2
	cmp	r3, #0x1f
	bgt	.L8bc18
	mov	r1, r10
	ldrb	r7, [r1]
	add	r10, r2
	cmp	r7, #0xff
	bne	.L8bb74
.L8bc18:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808bb2c

