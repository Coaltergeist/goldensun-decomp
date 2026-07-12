	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008eb4
	push	{lr}
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf20
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf20
	bl	__CutsceneStart
	ldr	r0, =0x11b6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lefc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Lf1a
.Lefc:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	mov	r0, #0x28
	strh	r3, [r2]
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lf1a:
	bl	__CutsceneEnd
	b	.Lf44
.Lf20:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L755a
	mov	r1, #0x32
	mov	r2, #0x2c
	bl	__Func_8010560
	mov	r1, #0xaa
	mov	r2, #0xde
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r0, #7
	bl	__Func_8091e9c
.Lf44:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008eb4
