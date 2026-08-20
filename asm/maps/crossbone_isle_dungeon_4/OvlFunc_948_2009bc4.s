	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009bc4
	push	{lr}
	ldr	r0, =OvlFunc_948_2009e94
	sub	sp, #8
	bl	__StopTask
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_1bf8
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm948_1c0c
.Lm948_1bf8:
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm948_1c0c:
	bl	OvlFunc_948_2009ec0
	ldr	r0, =0x206
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009bc4

