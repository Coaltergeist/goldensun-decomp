	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_20098c4
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r4, [r0, #8]
	asr	r2, r4, #19
	mov	r3, r2
	sub	r3, #0x18
	cmp	r3, #7
	bls	.Lm921_18ea
	ldr	r1, [r0, #0x10]
	asr	r3, r1, #19
	sub	r3, #0x24
	cmp	r3, #9
	bhi	.Lm921_1902
	mov	r3, r2
	sub	r3, #0x16
	cmp	r3, #9
	bhi	.Lm921_1902
.Lm921_18ea:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm921_1954
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	strb	r0, [r3, #0x17]
	mov	r0, #0x80
	lsl	r0, #2
	b	.Lm921_1928
.Lm921_1902:
	mov	r2, #0xe8
	lsl	r2, #16
	cmp	r4, r2
	ble	.Lm921_1934
	mov	r2, #0xf0
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	ble	.Lm921_1934
	mov	r3, #0xd4
	lsl	r3, #16
	cmp	r1, r3
	ble	.Lm921_1934
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	lsl	r0, #2
	strb	r3, [r2, #0x17]
.Lm921_1928:
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	b	.Lm921_1954
.Lm921_1934:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm921_1954
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r3, #1
	ldr	r0, =0x201
	strb	r3, [r2, #0x17]
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.Lm921_1954:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20098c4

