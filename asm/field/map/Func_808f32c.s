	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808f32c  @ 0x0808f32c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r1, #0xfa
	ldr	r7, [r3, #0x10]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #8
	bl	GetFieldActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	str	r3, [sp]
	cmp	r7, #0
	bne	.L8f364
	b	.L8f46e
.L8f364:
	b	.L8f458
.L8f366:
	ldrb	r3, [r7]
	mov	r10, r3
	mov	r0, r10
	add	r7, #1
	bl	Func_808ed4c
	cmp	r0, #0
	bne	.L8f458
	mov	r3, r10
	sub	r3, #0x64
	cmp	r3, #0x8b
	bhi	.L8f458
	ldr	r1, [sp, #4]
	sub	r3, r1, r5
	cmp	r3, #0
	blt	.L8f38c
	cmp	r3, #8
	ble	.L8f394
	b	.L8f458
.L8f38c:
	ldr	r2, [sp, #4]
	sub	r3, r5, r2
	cmp	r3, #8
	bgt	.L8f458
.L8f394:
	ldr	r1, [sp]
	mov	r2, r8
	sub	r3, r1, r2
	cmp	r3, #0
	blt	.L8f3a4
	cmp	r3, #5
	ble	.L8f3ae
	b	.L8f458
.L8f3a4:
	ldr	r2, [sp]
	mov	r1, r8
	sub	r3, r1, r2
	cmp	r3, #5
	bgt	.L8f458
.L8f3ae:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r3, #1
	ldr	r2, [r6]
	neg	r3, r3
	cmp	r2, r3
	beq	.L8f458
	mov	r3, #0x80
	lsl	r5, #20
	lsl	r3, #12
	mov	r11, r5
	mov	r9, r3
.L8f3cc:
	mov	r1, #4
	ldrsh	r3, [r6, r1]
	cmp	r3, r10
	bne	.L8f44a
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #3
	bne	.L8f44a
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0x80
	lsl	r3, #14
	cmp	r2, r3
	beq	.L8f40c
	cmp	r2, r3
	bhi	.L8f3fc
	cmp	r2, #0
	beq	.L8f40c
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r2, r3
	beq	.L8f40c
	b	.L8f44a
.L8f3fc:
	mov	r1, #0xc0
	lsl	r1, #14
	cmp	r2, r1
	beq	.L8f40c
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8f44a
.L8f40c:
	mov	r2, #1
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	neg	r2, r2
	cmp	r0, r2
	beq	.L8f44a
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8f44a
	mov	r1, r8
	lsl	r3, r1, #20
	mov	r1, r11
	mov	r0, #0x16
	add	r1, r9
	mov	r2, #0
	add	r3, r9
	bl	_CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L8f44a
	ldr	r1, =gScript_0809e8a0
	bl	_Actor_SetScript
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r3, =Func_808f28c
	str	r3, [r5, #0x6c]
.L8f44a:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r1, #1
	neg	r1, r1
	mov	r2, r3
	cmp	r3, r1
	bne	.L8f3cc
.L8f458:
	ldrb	r5, [r7]
	add	r7, #1
	ldrb	r2, [r7]
	add	r7, #1
	mov	r8, r2
	cmp	r5, #0xff
	beq	.L8f468
	b	.L8f366
.L8f468:
	cmp	r2, #0xff
	beq	.L8f46e
	b	.L8f366
.L8f46e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808f32c

