	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_905_2008ecc
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xa
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm905_eec
	ldr	r0, =0xfffff
	add	r3, r0
.Lm905_eec:
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm905_efe
	ldr	r2, =0xfffff
	add	r3, r2
.Lm905_efe:
	asr	r3, #20
	cmp	r5, #0x26
	beq	.Lm905_f06
	b	.Lm905_105c
.Lm905_f06:
	cmp	r3, #0xe
	beq	.Lm905_f0c
	b	.Lm905_105c
.Lm905_f0c:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0xbc
	str	r3, [r5, #0x3c]
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0
	ldr	r1, [r5, #0xc]
	mov	r8, r0
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r3, #0x80
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r11, r0
	lsl	r3, #8
	mov	r0, r4
	bl	OvlFunc_905_2008a68
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	ldr	r0, =0x6666
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	mov	r9, r0
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_905_2008a68
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	ldr	r0, =0xffff999a
	mov	r10, r0
	mov	r0, r9
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_905_2008a68
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r0, r4
	bl	OvlFunc_905_2008a68
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_905_2008a68
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r3, [r6, #8]
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_905_2008a68
	ldr	r0, =0x301
	bl	__SetFlag
.Lm905_105c:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008ecc

