	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_2008e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0x91
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r8, r0
	mov	r0, r10
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, r10
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x91
	lsl	r2, #17
	ldr	r1, =0x1d70000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_8092950
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0xc9
	bl	__PlaySound
	mov	r6, #0
.Lm897_ea2:
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #1
	bl	__CutsceneWait
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x3c
	bne	.Lm897_ea2
	mov	r0, #0xbe
	bl	__PlaySound
	ldr	r7, =0xfffffd71
	mov	r6, #0
.Lm897_ec6:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__CutsceneWait
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x5a
	bne	.Lm897_ec6
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2008e30

