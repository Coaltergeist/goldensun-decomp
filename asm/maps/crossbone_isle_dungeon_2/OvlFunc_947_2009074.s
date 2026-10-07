	.include "macros.inc"
	.include "gba.inc"

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
	bge	.Lm947_10ac
	ldr	r2, =0xfffff
	add	r3, r4, r2
.Lm947_10ac:
	asr	r5, r3, #20
	mov	r10, r5
	cmp	r5, #0
	bge	.Lm947_10b6
	neg	r5, r5
.Lm947_10b6:
	mov	r3, #0x22
	add	r3, r6
	add	r5, #1
	mov	r7, #0
	mov	r8, r3
.Lm947_10c0:
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
	bge	.Lm947_10de
	ldr	r2, =0xfffff
	add	r3, r0, r2
.Lm947_10de:
	asr	r0, r3, #20
	cmp	r10, r0
	bge	.Lm947_1136
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	asr	r3, #20
	lsl	r3, #20
	lsl	r1, #12
	add	r2, r3, r1
	mov	r3, r11
	cmp	r3, #0
	bne	.Lm947_110c
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
	b	.Lm947_111e
.Lm947_110c:
	ldr	r3, [r6, #0x10]
	add	r7, #3
	asr	r3, #20
	add	r3, r7, r3
	ldr	r1, =0xfffe0000
	lsl	r3, #20
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xfd
.Lm947_111e:
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
	b	.Lm947_113c
.Lm947_1136:
	add	r7, #1
	cmp	r7, r5
	bls	.Lm947_10c0
.Lm947_113c:
	mov	r0, r6
	mov	r1, r4
	bl	OvlFunc_947_2008da8
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r3, r9
	cmp	r3, #0
	beq	.Lm947_1158
	mov	r0, r9
	bl	__DeleteActor
.Lm947_1158:
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

