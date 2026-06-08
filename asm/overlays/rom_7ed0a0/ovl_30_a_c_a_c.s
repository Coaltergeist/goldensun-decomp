	.include "macros.inc"

.thumb_func_start OvlFunc_964_20093b4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0x80
	ldr	r3, [r0, #8]
	lsl	r1, #14
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093b4

.thumb_func_start OvlFunc_964_20093e0
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #0x59
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a480
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093e0

