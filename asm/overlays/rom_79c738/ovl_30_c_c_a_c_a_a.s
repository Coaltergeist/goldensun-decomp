	.include "macros.inc"

.thumb_func_start OvlFunc_909_2008214
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L22c
	ldr	r0, =0x174b
	bl	__MessageID
	b	.L25e
.L22c:
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L23e
	ldr	r0, =0x176e
	bl	__MessageID
	b	.L25e
.L23e:
	ldr	r0, =0x1432
	bl	__MessageID
	ldr	r0, =0x84d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25e:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008214

.thumb_func_start OvlFunc_909_200828c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1756
	bl	__MessageID
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a8
	ldr	r0, =0x176c
	bl	__MessageID
.L2a8:
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	ldr	r0, =0x303
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200828c

