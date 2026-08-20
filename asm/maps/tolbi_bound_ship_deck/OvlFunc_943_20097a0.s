	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_20097a0
	push	{r5, r6, lr}
	mov	r1, #0x83
	lsl	r1, #17
	ldr	r2, =0x2c20000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, #0xa0
	lsl	r6, #7
	mov	r1, #0xa4
	mov	r2, #0xa2
	lsl	r2, #18
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r1, #0xc6
	ldr	r2, =0x2990000
	lsl	r1, #16
	mov	r0, #0x19
	bl	__MapActor_SetPos
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_8092b08
	mov	r1, #0xbc
	lsl	r1, #16
	ldr	r2, =0x2a60000
	mov	r0, #0x1a
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xba
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x27b0000
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20097a0

