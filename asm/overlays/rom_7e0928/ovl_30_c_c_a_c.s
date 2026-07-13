	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008ad4
	push	{r5, r6, lr}
	ldr	r6, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r0
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #13
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008ad4

.thumb_func_start OvlFunc_956_2008b30
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r3, r0
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xa6
	ldr	r3, [r5, #8]
	lsl	r2, #18
	cmp	r3, r2
	ble	.Lb4e
	str	r2, [r5, #8]
.Lb4e:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #12
	ldr	r2, [r5, #0xc]
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Surprise
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008b30

