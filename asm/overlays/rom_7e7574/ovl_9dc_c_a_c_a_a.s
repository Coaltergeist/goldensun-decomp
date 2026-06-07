	.include "macros.inc"

.thumb_func_start OvlFunc_959_200969c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x85
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_959_2009660
	cmp	r0, #0
	bne	.L16f4
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L16de
	mov	r0, #0x11
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L16de
	ldr	r0, =0x215
	bl	__Func_8079358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079358
.L16de:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16f4
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5e
	strh	r3, [r2]
.L16f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200969c

