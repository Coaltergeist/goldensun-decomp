	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_20091bc
	push	{r5, lr}
	mov	r0, #0x55
	bl	__PlaySound
	ldr	r0, =0x292a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L11da
.L11d4:
	mov	r0, #1
	bl	__WaitFrames
.L11da:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L11d4
	bl	__Func_801faa8
	mov	r0, r5
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x292b
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L120a
.L1204:
	mov	r0, #1
	bl	__WaitFrames
.L120a:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1204
	mov	r0, r5
	mov	r1, #1
	bl	__CloseUIBox
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20091bc

