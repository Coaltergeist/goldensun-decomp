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
