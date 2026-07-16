	.include "macros.inc"
	.include "gba.inc"


	.section .text.after_84cc, "ax", %progbits






	.section .text.after_86a0, "ax", %progbits

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
.L70a:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__WaitFrames
	cmp	r5, #8
	bne	.L742
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
.L742:
	add	r5, #1
	cmp	r5, #0x17
	ble	.L70a
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =gOvl932FlashThreshold
	ldr	r3, .L78c	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L75a:
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L75a
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
	b	.L7ac

	.align	2, 0
.L78c:
	.word	0
	.pool

.L7ac:
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

	.section .text.after_87e8, "ax", %progbits

.thumb_func_start OvlFunc_932_20088d4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r5, #1
	mov	r8, r3
	mov	r0, #0x71
	mov	r1, #0x1f
	mov	r2, #0x67
	mov	r3, #0x11
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #0x20
	mov	r2, #0x68
	mov	r3, #0x12
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x12
	mov	r1, #0x20
	mov	r2, #0x67
	mov	r0, #0x40
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xe6
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r5, #0xb2
	lsl	r5, #1
	add	r5, r8
	mov	r6, #0x17
.L93c:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.L93c
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =gOvl932FlashThreshold
	ldr	r3, .L994	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L962:
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L962
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
	b	.L9ac

	.align	2, 0
.L994:
	.word	0
	.pool

.L9ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xe
	mov	r2, #0x67
	mov	r3, #0x11
	mov	r0, #0x67
	bl	__CopyMapTiles
	ldr	r0, =0x907
	bl	__SetFlag
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20088d4
