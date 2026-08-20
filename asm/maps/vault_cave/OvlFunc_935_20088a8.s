	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_20088a8
	push	{r5, r6, lr}
	ldr	r0, =0x9a8
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_932
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	ldr	r0, =0x9a8
	bl	__SetFlag
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r5, #0x1b
	mov	r6, #0x5c
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6b
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x27
	bl	__CutsceneWait
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6c
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0x9c
	bl	__PlaySound
	mov	r6, #0x19
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	mov	r0, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_935_2008754
.Lm935_932:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20088a8

