	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_2060
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r2, =.Lc1_9
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r1, [r2, r5]
	ldr	r3, =0xffff0000
	mov	r9, r2
	mov	r2, r1
	and	r2, r3
	mov	r10, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r8, r0
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_common1_2018
	mov	r6, r0
	cmp	r6, #0
	beq	.Lc1_21a6
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	beq	.Lc1_20ec
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lc1_21a6
.Lc1_20ec:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	beq	.Lc1_2118
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lc1_21a6
.Lc1_2118:
	mov	r3, #0
	mov	r2, r6
	add	r2, #0x22
	mov	r11, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__TestCollision
	cmp	r0, #0
	bgt	.Lc1_21a6
	ldr	r5, =0x3333
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	mov	r0, #0xf
	bl	__WaitFrames
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Actor_TravelTo
	mov	r0, #0xee
	bl	__PlaySound
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r2, r11
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x24]
	str	r2, [r6, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Actor_SetAnim
.Lc1_21a6:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_2060

