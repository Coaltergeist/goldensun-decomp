	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_2008c10
	push	{r5, lr}
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm939_c5c
	ldr	r0, =0x201
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm939_c5c
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xd
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__Func_8091e9c
.Lm939_c5c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c10

