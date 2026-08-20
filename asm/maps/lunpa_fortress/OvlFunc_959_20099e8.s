	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_20099e8
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x35b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm959_1a32
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm959_1a06
	ldr	r2, =0xfffff
	add	r3, r2
.Lm959_1a06:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm959_1a12
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_1a12:
	asr	r0, #20
	cmp	r3, #0x2b
	bne	.Lm959_1a32
	cmp	r0, #0x1c
	ble	.Lm959_1a32
	cmp	r0, #0x1f
	bgt	.Lm959_1a32
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x29
	strh	r2, [r3]
	bl	OvlFunc_959_2008f30
.Lm959_1a32:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20099e8

