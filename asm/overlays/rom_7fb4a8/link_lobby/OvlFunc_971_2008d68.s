	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008d68
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r6, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r7
	bl	__MapActor_Face
	ldr	r3, =0xffff5fff
	ldr	r2, =0x3ffe
	add	r5, r3
	cmp	r5, r2
	bhi	.Ldac
	mov	r2, #0xab
	ldr	r3, =0x297b
	lsl	r2, #2
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.Ldba
	ldr	r0, =0x2988
	b	.Ldca
.Ldac:
	ldr	r2, =0x2b2
	ldr	r3, =0x297d
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Ldd8
.Ldba:
	bl	__Func_80198dc
	mov	r1, #5
	ldrh	r0, [r5]
	bl	__Func_8019908
	mov	r0, r8
	add	r0, #1
.Ldca:
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	b	.Lde6
.Ldd8:
	ldr	r0, =0x2989
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lde6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008d68
