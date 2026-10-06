	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200b7d8
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm945_37ea
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_389a
.Lm945_37ea:
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.Lm945_380e
	mov	r1, #0xcd
	mov	r3, #0xd0
	lsl	r1, #1
	mov	r2, #0xac
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm945_380e:
	cmp	r5, #0
	beq	.Lm945_381c
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_389a
.Lm945_381c:
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.Lm945_3840
	mov	r1, #0xeb
	mov	r3, #0xb0
	lsl	r1, #1
	mov	r2, #0xac
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm945_3840:
	cmp	r5, #0
	beq	.Lm945_384e
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_389a
.Lm945_384e:
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.Lm945_3872
	mov	r1, #0xcd
	mov	r3, #0xd0
	lsl	r1, #1
	mov	r2, #0xcc
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm945_3872:
	cmp	r5, #0
	bne	.Lm945_389a
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.Lm945_389a
	mov	r1, #0xeb
	mov	r3, #0xb0
	lsl	r1, #1
	mov	r2, #0xcc
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm945_389a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b7d8

