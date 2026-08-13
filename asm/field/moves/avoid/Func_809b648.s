	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b648  @ 0x0809b648
	push	{lr}
	ldr	r1, =gState
	mov	r3, #0x91
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
	mov	r2, #0x92
	lsl	r2, #2
	add	r3, r1, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9b678
	mov	r0, #0x96
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x923
	mov	r1, #1
	bl	_Func_801776c
	b	.L9b688
.L9b678:
	mov	r0, #0xec
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x925
	mov	r1, #1
	bl	_Func_801776c
.L9b688:
	pop	{r0}
	bx	r0
.func_end Func_809b648
