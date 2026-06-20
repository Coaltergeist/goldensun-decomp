	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_2008f64
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, #0x10
.Lf6e:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r7
	bl	__MapActor_SetIdle
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, r5
	strb	r3, [r1, #9]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x34]
	ldr	r3, =0x1cccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xe8
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r3, #0x84
	lsl	r3, #16
	add	r7, #1
	str	r3, [r5, #0x10]
	cmp	r7, #0x1f
	bls	.Lf6e
	mov	r0, #0x91
	bl	__PlaySound
	ldr	r1, =Func_8000888
	mov	r7, #0
	mov	r10, r1
.Lfd8:
	mov	r0, r7
	add	r0, #0x10
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r0, =0xffffc000
	ldr	r2, [r6, #0x50]
	lsl	r5, r7, #12
	add	r3, r5, r0
	strh	r3, [r2, #0x1e]
	mov	r0, r5
	bl	__cos
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	mov	r8, r0
	mov	r0, r5
	bl	__sin
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r1, r8
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	add	r7, #1
	bl	__Actor_TravelTo
	cmp	r7, #0xf
	bls	.Lfd8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r3, #0x80
	lsl	r1, #9
	lsl	r3, #24
	mov	r7, #0x10
	mov	r10, r1
	mov	r6, #0
	mov	r8, r3
.L103e:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r7
	bl	__MapActor_SetIdle
	add	r7, #1
	mov	r1, r8
	mov	r0, r10
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r1, [r5, #0x38]
	str	r1, [r5, #0x3c]
	str	r1, [r5, #0x40]
	cmp	r7, #0x1f
	bls	.L103e
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2008f64

