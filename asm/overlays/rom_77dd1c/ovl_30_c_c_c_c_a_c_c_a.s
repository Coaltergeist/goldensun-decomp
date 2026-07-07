	.include "macros.inc"

.thumb_func_start OvlFunc_882_200c2bc
	push	{r5, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L42d4
	mov	r1, #7
	bl	__Actor_SetColorswap
	b	.L42dc
.L42d4:
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetColorswap
.L42dc:
	ldr	r3, =.L57fc
	ldr	r1, [r3]
	ldr	r2, =iwram_3001e40
	lsl	r1, #3
	add	r1, #0x10
	ldr	r0, [r2]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L42f6
	mov	r0, r5
	bl	OvlFunc_882_200c41c
.L42f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c2bc

.thumb_func_start OvlFunc_882_200c304
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L4326
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L4326:
	ldr	r3, =.L57fc
	ldr	r1, [r3]
	lsl	r1, #3
	add	r1, #0x10
	ldr	r0, [r5]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L433e
	mov	r0, r6
	bl	OvlFunc_882_200c41c
.L433e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c304

