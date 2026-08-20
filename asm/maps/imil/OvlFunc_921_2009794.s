	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2009794
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e40
	mov	r1, #0x3c
	ldr	r0, [r6]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_17cc
	mov	r3, #0x92
	mov	r0, #0xde
	ldr	r1, =0x1cf0000
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_17cc
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.Lm921_17cc:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x1e
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_1806
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r3, #0xb2
	mov	r0, #0xde
	lsl	r1, #17
	lsl	r2, #14
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_1806
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.Lm921_1806:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0xa
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_183e
	mov	r1, #0xec
	mov	r3, #0x8c
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #15
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_183e
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.Lm921_183e:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x32
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_1876
	mov	r1, #0xab
	mov	r3, #0xf8
	mov	r0, #0xde
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #15
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_1876
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.Lm921_1876:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x50
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_18ac
	mov	r3, #0xab
	mov	r0, #0xde
	ldr	r1, =0x1af0000
	mov	r2, #0
	lsl	r3, #16
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_18ac
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.Lm921_18ac:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2009794

