	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2009228
	push	{r5, lr}
	mov	r0, #0x55
	bl	__PlaySound
	ldr	r0, =0x292c
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L1246
.L1240:
	mov	r0, #1
	bl	__WaitFrames
.L1246:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1240
	bl	__Func_801faa8
	mov	r0, r5
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x292d
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L1276
.L1270:
	mov	r0, #1
	bl	__WaitFrames
.L1276:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1270
	mov	r0, r5
	mov	r1, #1
	bl	__CloseUIBox
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009228

