	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008368
	push	{lr}
	ldr	r0, =0x9a9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_390
	bl	OvlFunc_935_2008170
	bl	OvlFunc_935_2008334
	cmp	r0, #0
	beq	.Lm935_390
	ldr	r0, =0x9a9
	bl	__SetFlag
	mov	r0, #0x50
	bl	__PlaySound
	bl	OvlFunc_935_2008398
.Lm935_390:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008368

.thumb_func_start OvlFunc_935_2008398
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #4
	bl	__Func_80105d4
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r5, #0x10
	mov	r0, #0x17
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x35
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008398

.thumb_func_start OvlFunc_935_20083e0
	push	{lr}
	ldr	r0, =0x9a9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_404
	bl	OvlFunc_935_2008334
	cmp	r0, #0
	beq	.Lm935_404
	ldr	r0, =0x9a9
	bl	__SetFlag
	mov	r0, #0x50
	bl	__PlaySound
	bl	OvlFunc_935_2008398
.Lm935_404:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20083e0

