	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200c670
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_46aa
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_46b4
.Lm945_46aa:
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.Lm945_46b4:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_46f4
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_46fe
.Lm945_46f4:
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.Lm945_46fe:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_4734
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_473e
.Lm945_4734:
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.Lm945_473e:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_477e
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_4788
.Lm945_477e:
	mov	r0, #6
	mov	r1, #0xd
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.Lm945_4788:
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0xe
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #6
	mov	r1, #0xf
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0x10
	bl	OvlFunc_945_200c8e8
	mov	r0, #6
	mov	r1, #0x11
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c670

