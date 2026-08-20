	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_905_20090c8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gOvl_020098ec
	ldr	r5, [r3]
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0xf0
	beq	.Lm905_111a
	cmp	r3, #0xf0
	bgt	.Lm905_10e8
	cmp	r3, #0x3c
	beq	.Lm905_10f8
	cmp	r3, #0xb4
	beq	.Lm905_1110
	b	.Lm905_112e
.Lm905_10e8:
	mov	r2, #0x87
	lsl	r2, #1
	cmp	r3, r2
	beq	.Lm905_111a
	add	r2, #0xd2
	cmp	r3, r2
	beq	.Lm905_1126
	b	.Lm905_112e
.Lm905_10f8:
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Emote
	b	.Lm905_112e
.Lm905_1110:
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	b	.Lm905_112e
.Lm905_111a:
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	b	.Lm905_112e
.Lm905_1126:
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_SetAnim
.Lm905_112e:
	ldr	r3, =gState
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm905_1148
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.Lm905_1148:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_20090c8

