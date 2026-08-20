	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200b2b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r9, r3
	mov	r8, r1
	mov	r10, r2
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r7
	lsl	r2, #8
	ldr	r5, [r6, #0x50]
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x376
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	add	r5, #0x26
	mov	r3, #0
	add	r6, #0x55
	strb	r3, [r6]
	strb	r3, [r5]
	mov	r0, r7
	mov	r1, r8
	bl	__MapActor_SetAnim
	mov	r0, r7
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	ldr	r2, =0x36b
	lsl	r1, #1
	mov	r0, r7
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, r10
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x35b
	bl	__MapActor_TravelToWait
	mov	r3, #1
	strb	r3, [r5]
	mov	r3, r9
	cmp	r3, #0
	beq	.Lm883_334e
	mov	r3, #3
	strb	r3, [r6]
.Lm883_334e:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, #1
	bl	__MapActor_SetAnim
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b2b0

