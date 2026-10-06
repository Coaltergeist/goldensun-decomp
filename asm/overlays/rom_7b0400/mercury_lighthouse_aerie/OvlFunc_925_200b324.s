	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_925_200b324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	sub	sp, #0x18
	mov	r11, r1
	add	r1, sp, #4
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r3, #0
	mov	r8, r1
	mov	r10, r2
	mov	r9, r3
	mov	r2, #0
	mov	r1, #0x42
	mov	r3, r8
.Lm925_3354:
	add	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #4
	bls	.Lm925_3354
	mov	r2, r11
	ldr	r1, [r2, #0xc]
	mov	r0, r8
	bl	OvlFunc_925_200b1c0
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #0
	cmp	r3, #0x42
	beq	.Lm925_3398
	mov	r6, #0
	mov	r5, #0
.Lm925_3374:
	mov	r3, r8
	ldr	r0, [r5, r3]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r2, [sp]
	add	r0, #0x55
	mov	r1, #1
	add	r2, #1
	strb	r6, [r0]
	add	r9, r1
	add	r5, #4
	cmp	r2, #4
	bhi	.Lm925_3398
	mov	r1, r8
	ldr	r3, [r5, r1]
	cmp	r3, #0x42
	bne	.Lm925_3374
.Lm925_3398:
	mov	r0, #0xdf
	bl	__PlaySound
	mov	r2, #0
.Lm925_33a0:
	mov	r1, r11
	ldr	r3, [r1, #0xc]
	mov	r7, #0
	add	r3, r10
	str	r3, [r1, #0xc]
	cmp	r7, r9
	bcs	.Lm925_33da
	mov	r6, r8
.Lm925_33b0:
	ldr	r0, [r6]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r1, r10
	sub	r3, r1
	str	r3, [r0, #0x10]
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r5, r0
	ldmia	r6!, {r0}
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r7, #1
	str	r3, [r5, #0x40]
	ldr	r2, [sp]
	cmp	r7, r9
	bcc	.Lm925_33b0
.Lm925_33da:
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	bne	.Lm925_33ea
	cmp	r2, #0x4b
	bls	.Lm925_33ea
	ldr	r3, =0xffffcccd
	add	r10, r3
.Lm925_33ea:
	ldr	r1, =0xccb
	cmp	r10, r1
	bgt	.Lm925_33f4
	ldr	r3, =0xccc
	mov	r10, r3
.Lm925_33f4:
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0x55
	bls	.Lm925_33a0
	mov	r3, #0x80
	lsl	r3, #19
	mov	r1, r11
	str	r3, [r1, #0xc]
	bl	__Func_800fe9c
	mov	r0, #2
	bl	__WaitFrames
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b324

