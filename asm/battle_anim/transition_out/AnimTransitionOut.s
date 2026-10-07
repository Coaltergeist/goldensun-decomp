	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AnimTransitionOut  @ 0x080cd104
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x88
	str	r1, [sp, #4]
	ldr	r3, =iwram_3001ef0
	ldr	r1, [r3]
	sub	r3, #4
	ldr	r3, [r3]
	add	r2, sp, #8
	str	r3, [sp]
	mov	r11, r2
	add	r3, sp, #0x88
	mov	r7, r0
	mov	r9, r1
	mov	r6, #0x3f
	mov	r5, r11
	mov	r8, r3
.Lcd130:
	bl	Random
	and	r0, r6
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r8
	bne	.Lcd130
	cmp	r7, #1
	bne	.Lcd1c0
	mov	r1, #0
	mov	r2, #1
	mov	r8, r1
	mov	r10, r2
	mov	r5, #0
.Lcd14c:
	add	r8, r10
	mov	r3, #1
	add	r10, r3
	cmp	r5, r8
	beq	.Lcd1a6
	ldr	r1, [sp, #4]
	mov	r12, r11
	mov	r4, #7
	sub	r7, r3, r1
.Lcd15e:
	mov	r6, #0
	mov	r0, r12
.Lcd162:
	ldrb	r3, [r0]
	sub	r1, r5, r3
	add	r0, #1
	cmp	r1, #0
	blt	.Lcd19a
	cmp	r1, #0x7f
	bgt	.Lcd19a
	mov	r2, r6
	cmp	r6, #0
	bge	.Lcd178
	add	r2, r6, #7
.Lcd178:
	asr	r2, #3
	mov	r3, r1
	cmp	r1, #0
	bge	.Lcd182
	add	r3, r1, #7
.Lcd182:
	asr	r3, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r6
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r9
	strb	r7, [r3, r2]
.Lcd19a:
	add	r6, #1
	cmp	r6, #0x80
	bne	.Lcd162
	add	r5, #1
	cmp	r5, r8
	bne	.Lcd15e
.Lcd1a6:
	ldr	r1, [sp]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x80
	lsl	r1, #1
	cmp	r8, r1
	ble	.Lcd14c
	b	.Lcd244
.Lcd1c0:
	mov	r2, #0
	mov	r3, #1
	mov	r8, r2
	mov	r10, r3
	mov	r6, #0
.Lcd1ca:
	mov	r1, r10
	lsr	r3, r1, #31
	add	r3, r10
	asr	r3, #1
	mov	r2, #4
	add	r8, r3
	add	r10, r2
	cmp	r6, r8
	beq	.Lcd22e
	ldr	r1, [sp, #4]
	mov	r3, #1
	mov	r12, r11
	mov	r4, #7
	sub	r7, r3, r1
.Lcd1e6:
	mov	r5, #0
	mov	r0, r12
.Lcd1ea:
	ldrb	r3, [r0]
	sub	r1, r6, r3
	add	r0, #1
	cmp	r1, #0
	blt	.Lcd222
	cmp	r1, #0x7f
	bgt	.Lcd222
	mov	r2, r1
	cmp	r1, #0
	bge	.Lcd200
	add	r2, r1, #7
.Lcd200:
	asr	r2, #3
	mov	r3, r5
	cmp	r5, #0
	bge	.Lcd20a
	add	r3, r5, #7
.Lcd20a:
	asr	r3, #3
	lsl	r2, #4
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r5
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r9
	strb	r7, [r3, r2]
.Lcd222:
	add	r5, #1
	cmp	r5, #0x80
	bne	.Lcd1ea
	add	r6, #1
	cmp	r6, r8
	bne	.Lcd1e6
.Lcd22e:
	ldr	r1, [sp]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r8
	cmp	r1, #0xbf
	ble	.Lcd1ca
.Lcd244:
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AnimTransitionOut
