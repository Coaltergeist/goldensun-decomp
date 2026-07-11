	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200abe0
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r6]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2cbc
	bl	__Random
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #4
	ldr	r2, =0x2fd0000
	lsr	r1, #16
	lsl	r1, #16
	mov	r3, #0x98
	add	r1, r2
	mov	r0, #0xc8
	ldr	r2, =0xffc00000
	lsl	r3, #18
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L2cbc
	ldr	r0, [r6]
	mov	r1, #9
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2c3a
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L2c34
	mov	r0, #0x91
	bl	__PlaySound
	b	.L2c3a
.L2c34:
	mov	r0, #0x90
	bl	__PlaySound
.L2c3a:
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Random
	ldr	r3, =0x4ccc
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x6666
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x61
	mov	r3, #1
	str	r0, [r5, #0x1c]
	str	r0, [r5, #0x18]
	mov	r1, #0
	strb	r3, [r2]
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r1, =gScript_932__0200c01c
	mov	r0, r5
	bl	__Actor_SetScript
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	str	r3, [r5, #0x24]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #9
	ldr	r2, =0xfffffd00
	lsr	r3, #16
	add	r3, r2
	str	r3, [r5, #0x2c]
.L2cbc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200abe0

