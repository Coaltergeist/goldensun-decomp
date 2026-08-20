	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200b380
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
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
	ldr	r2, =0x35b
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x55
	mov	r3, #0
	add	r2, r6
	add	r5, #0x26
	strb	r3, [r2]
	strb	r3, [r5]
	mov	r0, r7
	mov	r1, r8
	mov	r11, r2
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	lsl	r1, #1
	ldr	r2, =0x36b
	mov	r0, r7
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0x2666
	mov	r0, r7
	ldr	r1, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, r7
	mov	r1, r10
	bl	__MapActor_SetAnim
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x37a
	bl	__MapActor_TravelToWait
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #1
	strb	r3, [r5]
	mov	r3, r9
	cmp	r3, #0
	beq	.Lm883_342e
	mov	r3, #3
	mov	r2, r11
	strb	r3, [r2]
.Lm883_342e:
	mov	r0, r7
	mov	r1, #1
	bl	__MapActor_SetAnim
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b380

