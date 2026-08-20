	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008bc8
	push	{lr}
	ldr	r3, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	ldrh	r1, [r3]
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.Lm957_be6
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #5
	strh	r2, [r3]
.Lm957_be6:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm957_c18
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #0xb
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092950
.Lm957_c18:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008bc8

