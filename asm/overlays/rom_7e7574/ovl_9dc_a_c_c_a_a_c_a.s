	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008bec
	push	{r5, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x16
	ble	.Lc68
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x90
	bl	__PlaySound
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc62
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lc62:
	ldr	r0, =0x943
	bl	__SetFlag
.Lc68:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008bec
