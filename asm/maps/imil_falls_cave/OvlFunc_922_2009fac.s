	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009fac
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bgt	.Lm922_1ffc
	ldr	r3, =iwram_3001f30
	ldr	r2, [r3]
	mov	r0, #1
	sub	r3, #0x64
	add	r2, #0x34
	ldr	r1, [r3]
	strb	r0, [r2]
	ldr	r2, =0x53e
	mov	r4, #0
	add	r3, r1, r2
	sub	r2, #2
	strb	r4, [r3]
	add	r3, r1, r2
	strb	r0, [r3]
	ldr	r3, =0x53d
	add	r1, r3
	strb	r0, [r1]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8091220
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x10
	bl	__WaitFrames
.Lm922_1ffc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009fac

