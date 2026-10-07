	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #8
	mov	r9, r0
	ldrh	r3, [r7, #6]
	mov	r1, r9
	ldr	r0, [r7, #0xc]
	and	r1, r3
	sub	sp, #0xc
	mov	r9, r1
	cmp	r0, #0
	bge	.Lm932_375e
	ldr	r2, =0xffff
	add	r0, r2
.Lm932_375e:
	mov	r3, r7
	asr	r0, #16
	add	r3, #0x64
	mov	r10, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	mov	r1, r10
	sub	r3, r1
	ldr	r2, =.Lm932_51b4
	lsl	r3, #2
	add	r3, #0x40
	ldr	r2, [r2, r3]
	mov	r10, r2
	mov	r2, #0x66
	add	r2, r7
	mov	r8, r2
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.Lm932_37b0
	sub	r3, r2, #1
	mov	r0, #0xa0
	mov	r2, r8
	strh	r3, [r2]
	lsl	r0, #13
	lsl	r3, #16
	cmp	r3, r0
	bne	.Lm932_37a0
	mov	r0, #0xb8
	bl	__PlaySound
.Lm932_37a0:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lm932_37b0
	mov	r0, #0xe9
	bl	__PlaySound
.Lm932_37b0:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc0
	str	r3, [r5, #8]
	mov	r0, r10
	lsl	r1, #8
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r1, r9
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	str	r1, [r7, #8]
	ldr	r2, [r5, #8]
	mov	r0, #2
	str	r2, [r7, #0x10]
	bl	__Func_8011f54
	mov	r1, #0xc0
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r10
	ldr	r3, =Func_8000888
	.call_via r3
	neg	r0, r0
	mov	r1, r9
	mov	r2, r5
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_8011f54
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x14
	bgt	.Lm932_3832
	cmp	r6, r0
	bne	.Lm932_381c
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	b	.Lm932_3832
.Lm932_381c:
	cmp	r6, r0
	ble	.Lm932_382a
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm932_3832
.Lm932_382a:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
.Lm932_3832:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b738

