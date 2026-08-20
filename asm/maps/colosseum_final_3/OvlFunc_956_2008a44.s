	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008a44
	push	{r5, lr}
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x19999
	mov	r1, #2
	str	r3, [r5, #0x34]
	str	r3, [r5, #0x30]
	bl	__Actor_SetAnim
	mov	r0, r5
	ldr	r1, =gScript_956__0200cc48
	bl	__Actor_SetScript
	ldr	r0, =0x363
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008a44

