	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008c2c
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_c4a
	bl	OvlFunc_957_2008b30
	mov	r2, r5
	add	r2, #0x34
	mov	r3, #1
	strb	r3, [r2]
.Lm957_c4a:
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lm957_c84
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #6
	bl	__Func_8092950
.Lm957_c84:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008c2c

