	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_2009ea4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x64
	strh	r6, [r3]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, r5
	lsr	r3, #12
	add	r2, #0x66
	strh	r3, [r2]
	ldr	r1, =gScript_936__0200beac
	mov	r0, r5
	bl	__Actor_SetScript
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009ea4

