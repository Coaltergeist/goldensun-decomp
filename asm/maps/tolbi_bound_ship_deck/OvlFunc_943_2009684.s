	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009684
	push	{r5, r6, lr}
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x92
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_16e6
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x29a0000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x17
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm943_16e6:
	ldr	r0, =0x922
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_1766
	mov	r1, #0x84
	ldr	r2, =0x2be0000
	lsl	r1, #17
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	ldr	r6, =gScript_943__0200c4d8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r1, #0xf8
	mov	r2, #0xaa
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm943_1786
.Lm943_1766:
	ldr	r0, =0x923
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1786
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	strh	r5, [r0, #6]
.Lm943_1786:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009684

