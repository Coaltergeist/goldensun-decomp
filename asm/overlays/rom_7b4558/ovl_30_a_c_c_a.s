	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008d90
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r10, r2
	mov	r9, r3
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r5, r0
	mov	r0, r6
	bl	__Func_8092b08
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, r6
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, r9
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__Func_8092158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__MapActor_SetPos
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x48]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008d90

