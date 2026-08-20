	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008b10
	push	{r5, r6, lr}
	ldr	r0, =0xc1b
	mov	r1, #1
	bl	__Func_801776c
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #0
	bl	__ModifyHP
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #1
	bl	__ModifyHP
	mov	r1, #0x21
	neg	r1, r1
	mov	r0, #2
	bl	__ModifyHP
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #3
	bl	__ModifyHP
	mov	r1, #0x32
	neg	r1, r1
	mov	r0, #0
	bl	__ModifyPP
	mov	r1, #0x28
	neg	r1, r1
	mov	r0, #1
	bl	__ModifyPP
	mov	r1, #0x23
	neg	r1, r1
	mov	r0, #2
	bl	__ModifyPP
	mov	r1, #0x14
	neg	r1, r1
	mov	r0, #3
	bl	__ModifyPP
	mov	r0, #0
	bl	__GetUnit
	ldr	r6, =0x131
	mov	r2, #0xa0
	mov	r5, #1
	lsl	r2, #1
	strb	r5, [r0, r6]
	add	r0, r2
	strb	r5, [r0]
	mov	r0, #1
	bl	__GetUnit
	mov	r2, #0x98
	lsl	r2, #1
	add	r3, r0, r2
	strb	r5, [r3]
	mov	r3, #2
	strb	r3, [r0, r6]
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008b10

