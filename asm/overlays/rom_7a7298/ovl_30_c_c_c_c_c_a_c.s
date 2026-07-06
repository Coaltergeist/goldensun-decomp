	.include "macros.inc"

.thumb_func_start OvlFunc_921_2009704
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2009704

.thumb_func_start OvlFunc_921_200974c
	push	{lr}
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x7ae
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #2
	strh	r3, [r1]
	ldr	r3, [r0, #0x68]
	sub	r3, #1
	str	r3, [r0, #0x68]
	cmp	r3, #0
	bne	.L178a
	bl	__DeleteActor
.L178a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200974c

.thumb_func_start OvlFunc_921_2009794
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e40
	mov	r1, #0x3c
	ldr	r0, [r6]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L17cc
	mov	r3, #0x92
	mov	r0, #0xde
	ldr	r1, =0x1cf0000
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L17cc
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.L17cc:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x1e
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L1806
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
	beq	.L1806
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.L1806:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0xa
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L183e
	mov	r1, #0xec
	mov	r3, #0x8c
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #15
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L183e
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.L183e:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x32
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L1876
	mov	r1, #0xab
	mov	r3, #0xf8
	mov	r0, #0xde
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #15
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1876
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.L1876:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x50
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L18ac
	mov	r3, #0xab
	mov	r0, #0xde
	ldr	r1, =0x1af0000
	mov	r2, #0
	lsl	r3, #16
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L18ac
	bl	OvlFunc_921_2009704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_921_200974c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Actor_SetAnim
.L18ac:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2009794

.thumb_func_start OvlFunc_921_20098c4
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r4, [r0, #8]
	asr	r2, r4, #19
	mov	r3, r2
	sub	r3, #0x18
	cmp	r3, #7
	bls	.L18ea
	ldr	r1, [r0, #0x10]
	asr	r3, r1, #19
	sub	r3, #0x24
	cmp	r3, #9
	bhi	.L1902
	mov	r3, r2
	sub	r3, #0x16
	cmp	r3, #9
	bhi	.L1902
.L18ea:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1954
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	strb	r0, [r3, #0x17]
	mov	r0, #0x80
	lsl	r0, #2
	b	.L1928
.L1902:
	mov	r2, #0xe8
	lsl	r2, #16
	cmp	r4, r2
	ble	.L1934
	mov	r2, #0xf0
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	ble	.L1934
	mov	r3, #0xd4
	lsl	r3, #16
	cmp	r1, r3
	ble	.L1934
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	lsl	r0, #2
	strb	r3, [r2, #0x17]
.L1928:
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	b	.L1954
.L1934:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1954
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r3, #1
	ldr	r0, =0x201
	strb	r3, [r2, #0x17]
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.L1954:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20098c4

