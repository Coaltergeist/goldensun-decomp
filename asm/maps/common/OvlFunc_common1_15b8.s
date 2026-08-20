	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_15b8
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1_1600
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Actor_Stop
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
.Lc1_1600:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_15b8

