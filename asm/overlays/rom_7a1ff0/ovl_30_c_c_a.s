	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_914_20089f8
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_914_2008474
	cmp	r0, #0
	beq	.La20
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_914_2008608
.La20:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_20089f8

.thumb_func_start OvlFunc_914_2008a2c
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	ldr	r0, =0xfd3
	bl	__SetFlag
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008a2c

