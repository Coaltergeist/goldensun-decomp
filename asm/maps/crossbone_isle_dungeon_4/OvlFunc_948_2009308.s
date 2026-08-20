	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009308
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_131a
	ldr	r1, =0xfffff
	add	r3, r1
.Lm948_131a:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.Lm948_1326
	ldr	r2, =0xfffff
	add	r0, r2
.Lm948_1326:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r7, [r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_1376
	ldr	r2, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lm948_1376
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.Lm948_1376
	mov	r3, r6
	sub	r3, #0x15
	cmp	r3, #2
	bhi	.Lm948_1376
	cmp	r5, #9
	ble	.Lm948_1376
	cmp	r5, #0xb
	bgt	.Lm948_1376
	mov	r0, #0x88
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.Lm948_1376:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009308

