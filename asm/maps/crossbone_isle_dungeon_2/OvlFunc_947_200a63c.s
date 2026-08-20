	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a63c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, =0x1f5
	mov	r5, r0
	add	r0, r6, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm947_2680
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	ldr	r3, =OvlFunc_947_200a0b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r1, =OvlData_947_200ad64
	mov	r0, r6
	bl	__MapActor_SetBehavior
.Lm947_2680:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a63c

