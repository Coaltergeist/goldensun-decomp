	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20087e8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	sub	sp, #8
	ldr	r5, [r3]
	mov	r2, #0x1c
	mov	r3, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r0, #0x5d
	bl	__Func_80105d4
	mov	r0, #0xe6
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
	add	r5, r2
	mov	r6, #0x17
.Lm932_828:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm932_828
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =.Lm932_5238
	ldr	r3, .Lm932_880	@ 0
	strh	r3, [r2]
	mov	r5, r2
.Lm932_84e:
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.Lm932_84e
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
	b	.Lm932_898

	.align	2, 0
.Lm932_880:
	.word	0
	.pool

.Lm932_898:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #0x4d
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r3, #4
	mov	r0, #0x4d
	bl	__Func_80105d4
	ldr	r0, =0x8fe
	bl	__SetFlag
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20087e8

