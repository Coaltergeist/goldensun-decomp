	.include "macros.inc"
	.include "gba.inc"
.thumb_func_start OvlFunc_947_2008ddc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	mov	r8, r1
	mov	r6, r2
	ldr	r7, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =.L2ce0
	mov	r4, #0
	ldr	r3, [r3, r4]
	cmp	r2, r3
	beq	.Le1e
.Le02:
	mov	r3, #7
	add	r4, #1
	str	r3, [r5]
	cmp	r4, #5
	bhi	.Le20
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L2ce0
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	cmp	r1, r3
	bne	.Le02
.Le1e:
	str	r4, [r5]
.Le20:
	ldr	r2, [r5]
	cmp	r2, #6
	bls	.Le2a
	mov	r0, #0
	b	.Leb2
.Le2a:
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r0, #0x10]
	lsl	r1, r2, #4
	str	r3, [r5, #0x10]
	ldr	r0, =gScript_884__0200acf8
	add	r3, r1, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le44
	neg	r2, r2
.Le44:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le50
	neg	r3, r3
.Le50:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [r6]
	ldr	r3, [r5]
	lsl	r3, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le62
	neg	r2, r2
.Le62:
	add	r3, #8
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le6c
	neg	r3, r3
.Le6c:
	add	r3, r2, r3
	asr	r3, #4
	mov	r1, r8
	str	r3, [r1]
	ldr	r2, [r5]
	lsl	r2, #4
	ldr	r3, [r0, r2]
	ldr	r1, [r5, #8]
	lsl	r3, #16
	add	r1, r3
	str	r1, [r5, #8]
	add	r2, #4
	ldr	r3, [r0, r2]
	ldr	r2, [r5, #0x10]
	lsl	r3, #16
	add	r2, r3
	asr	r2, #20
	str	r2, [r5, #0x10]
	asr	r1, #20
	mov	r2, #0x9e
	str	r1, [r5, #8]
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r3, [r3]
	ldr	r2, [sp, #0x14]
	asr	r3, #20
	mov	r1, #0xa0
	str	r3, [r2]
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	ldr	r2, [sp, #0x18]
	asr	r3, #20
	str	r3, [r2]
	mov	r0, #1
.Leb2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008ddc


	.section .text.after_8fcc, "ax", %progbits

	.section .text.after_901c, "ax", %progbits

.thumb_func_start OvlFunc_947_2009074
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	str	r1, [sp, #4]
	mov	r9, r1
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8011f54
	mov	r4, r0
	mov	r3, r4
	cmp	r4, #0
	bge	.L10ac
	ldr	r2, =0xfffff
	add	r3, r4, r2
.L10ac:
	asr	r5, r3, #20
	mov	r10, r5
	cmp	r5, #0
	bge	.L10b6
	neg	r5, r5
.L10b6:
	mov	r3, #0x22
	add	r3, r6
	add	r5, #1
	mov	r7, #0
	mov	r8, r3
.L10c0:
	ldr	r3, [r6, #0x10]
	mov	r1, r8
	lsl	r2, r7, #20
	ldrb	r0, [r1]
	add	r2, r3
	ldr	r1, [r6, #8]
	str	r4, [sp]
	bl	__Func_8011f54
	mov	r3, r0
	ldr	r4, [sp]
	cmp	r0, #0
	bge	.L10de
	ldr	r2, =0xfffff
	add	r3, r0, r2
.L10de:
	asr	r0, r3, #20
	cmp	r10, r0
	bge	.L1136
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	asr	r3, #20
	lsl	r3, #20
	lsl	r1, #12
	add	r2, r3, r1
	mov	r3, r11
	cmp	r3, #0
	bne	.L110c
	ldr	r3, [r6, #0x10]
	add	r7, #2
	asr	r3, #20
	add	r3, r7, r3
	mov	r1, #0x80
	lsl	r3, #20
	lsl	r1, #10
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xdf
	b	.L111e
.L110c:
	ldr	r3, [r6, #0x10]
	add	r7, #3
	asr	r3, #20
	add	r3, r7, r3
	ldr	r1, =0xfffe0000
	lsl	r3, #20
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xfd
.L111e:
	mov	r0, r2
	mov	r1, r5
	mov	r2, r7
	bl	OvlFunc_common0_18
	ldr	r3, [r6, #0x10]
	sub	r3, r7
	mov	r9, r0
	add	r4, r3, r5
	mov	r2, #1
	str	r2, [sp, #4]
	b	.L113c
.L1136:
	add	r7, #1
	cmp	r7, r5
	bls	.L10c0
.L113c:
	mov	r0, r6
	mov	r1, r4
	bl	OvlFunc_947_2008da8
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r3, r9
	cmp	r3, #0
	beq	.L1158
	mov	r0, r9
	bl	__DeleteActor
.L1158:
	ldr	r0, [sp, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009074
