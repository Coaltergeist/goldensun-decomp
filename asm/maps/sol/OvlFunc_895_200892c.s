	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_200892c
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_960
	ldr	r3, =.Lm895_269c
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_895_2009ac8
	lsl	r1, #4
	bl	__StartTask
.Lm895_960:
	ldr	r0, =0x879
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_9b2
	mov	r5, #6
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.Lm895_9b2:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_a02
	mov	r1, #0xf0
	mov	r2, #0xe8
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r3, #6
	mov	r5, #0xe
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm895_a02:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200892c

