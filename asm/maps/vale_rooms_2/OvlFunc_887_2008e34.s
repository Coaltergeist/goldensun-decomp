	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2008e34
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	mov	r5, #0x90
	add	r3, r2
	lsl	r5, #8
	cmp	r3, r5
	bls	.Lm887_e54
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_80b3284
	b	.Lm887_ed4
.Lm887_e54:
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_eb0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__MapActor_Face
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm887_e96
	ldr	r0, =0x1c14
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
.Lm887_e96:
	ldr	r0, =0x1c15
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0xa
	bl	__Func_8092adc
	b	.Lm887_ed0
.Lm887_eb0:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_ec2
	ldr	r0, =0x11a9
	bl	__MessageID
	b	.Lm887_ec8
.Lm887_ec2:
	ldr	r0, =0xf58
	bl	__MessageID
.Lm887_ec8:
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
.Lm887_ed0:
	bl	__CutsceneEnd
.Lm887_ed4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008e34

