	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2008f58
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.Lm918_f6e
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm918_f6e
	bl	OvlFunc_918_2008918
.Lm918_f6e:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x844
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm918_fde
	mov	r3, #0x5d
	str	r3, [sp]
	mov	r6, #0xa
	mov	r0, #0x79
	mov	r1, #0x22
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r5, #0x1e
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	b	.Lm918_ff2
.Lm918_fde:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.Lm918_ff2:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2008f58

