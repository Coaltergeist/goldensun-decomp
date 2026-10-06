	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2009a44
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm959_1aa2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm959_1a64
	ldr	r1, =0xfffff
	add	r3, r1
.Lm959_1a64:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.Lm959_1a70
	ldr	r1, =0xfffff
	add	r3, r1
.Lm959_1a70:
	asr	r3, #20
	cmp	r2, #0x10
	bne	.Lm959_1aa2
	cmp	r3, #0x37
	ble	.Lm959_1aa2
	cmp	r3, #0x3a
	bgt	.Lm959_1aa2
	mov	r2, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r2, #8
	cmp	r0, r2
	beq	.Lm959_1a90
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bne	.Lm959_1aa2
.Lm959_1a90:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x28
	strh	r2, [r3]
	bl	OvlFunc_959_2008e80
.Lm959_1aa2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009a44

