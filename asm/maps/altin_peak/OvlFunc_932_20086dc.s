	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20086dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r0, #0xe6
	ldr	r5, [r3]
	sub	sp, #8
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xb2
	lsl	r2, #1
	ldr	r7, =0x1999
	add	r6, r5, r2
	mov	r5, #0
.Lm932_70a:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__WaitFrames
	cmp	r5, #8
	bne	.Lm932_742
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r7, [r0, #0x18]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0x98
	mov	r2, #0xd8
	str	r7, [r0, #0x1c]
	lsl	r1, #16
	mov	r0, #8
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #8
	ldr	r1, =gScript_932__0200bd48
	bl	__MapActor_SetBehavior
.Lm932_742:
	add	r5, #1
	cmp	r5, #0x17
	ble	.Lm932_70a
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =.Lm932_5238
	ldr	r3, .Lm932_78c	@ 0
	strh	r3, [r2]
	mov	r5, r2
.Lm932_75a:
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.Lm932_75a
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__SetIntrHandler
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	b	.Lm932_7ac

	.align	2, 0
.Lm932_78c:
	.word	0
	.pool

.Lm932_7ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0
	bl	__Func_8010704
	ldr	r0, =0x8fd
	bl	__SetFlag
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20086dc

