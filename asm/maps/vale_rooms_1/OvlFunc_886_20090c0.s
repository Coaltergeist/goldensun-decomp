	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_886_20090c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	mov	r1, #0xb4
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	mov	r6, #0x17
	cmp	r0, #0x14
	beq	.Lm886_10e2
	cmp	r0, #0x14
	bhi	.Lm886_10dc
	cmp	r0, #0xa
	beq	.Lm886_10e8
	b	.Lm886_1130
.Lm886_10dc:
	cmp	r0, #0x1e
	beq	.Lm886_10e6
	b	.Lm886_1130
.Lm886_10e2:
	mov	r6, #0x18
	b	.Lm886_10e8
.Lm886_10e6:
	mov	r6, #0x19
.Lm886_10e8:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm886_1130
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm886_1108
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__MapActor_SetPos
.Lm886_1108:
	ldr	r3, =0x6666
	mov	r2, #0xc0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =gScript_886__02009440
	mov	r0, r6
	bl	__MapActor_SetBehavior
.Lm886_1130:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20090c0

