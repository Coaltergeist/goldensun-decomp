.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_881_200813c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L14e
	ldr	r3, =0x14ccc
	b	.L152
.L14e:
	mov	r3, #0x80
	lsl	r3, #9
.L152:
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1ac
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r6, r0
	mov	r0, #0xf6
	bl	__PlaySound
	cmp	r6, #0
	beq	.L1ac
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r6
	add	r3, #0x64
	strh	r5, [r3]
	ldr	r3, =OvlFunc_881_200811c
	str	r3, [r6, #0x6c]
.L1ac:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200813c

.thumb_func_start OvlFunc_881_20081c4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L1dc
	mov	r1, #0xa
	bl	__Actor_SetColorswap
	b	.L1e4
.L1dc:
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetColorswap
.L1e4:
	mov	r3, r6
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L23c
	ldr	r3, =0x15d00000
	mov	r5, r6
	str	r3, [r6, #8]
	add	r5, #0x64
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	lsl	r0, #3
	bl	__sin
	mov	r1, #0x80
	ldr	r3, =Func_8000888
	lsl	r1, #11
	.call_via r3
	mov	r4, #0x80
	lsl	r4, #13
	mov	r3, #0xa6
	add	r0, r4
	lsl	r3, #19
	str	r0, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r2, #0
	ldrsh	r1, [r5, r2]
	mov	r2, r6
	add	r2, #8
	mov	r0, r4
	bl	__vec3_translate
	ldrh	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r2
	strh	r3, [r6, #6]
	mov	r2, #0x80
	ldrh	r3, [r5]
	lsl	r2, #3
	add	r3, r2
	strh	r3, [r5]
.L23c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20081c4
