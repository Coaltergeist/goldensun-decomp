	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_2008bf8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_915_20088c0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc5a
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x10
	mov	r3, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_915_2008244
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lc5a:
	mov	r0, #8
	bl	OvlFunc_915_20088c0
	mov	r0, #9
	bl	OvlFunc_915_20088c0
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc76
	mov	r0, #6
	bl	OvlFunc_915_2008c8c
.Lc76:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_915_2008bf8
