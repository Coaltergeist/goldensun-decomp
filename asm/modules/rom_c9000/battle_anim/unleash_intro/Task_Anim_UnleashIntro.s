	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Anim_UnleashIntro  @ 0x080cc960
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r3, [r3]
	ldr	r1, =0x778c
	sub	sp, #0x30
	str	r3, [sp, #8]
	add	r2, r3, r1
	ldr	r3, [r2]
	mov	r11, r3
	mov	r1, r11
	add	r3, #1
	str	r3, [r2]
	cmp	r1, #0
	bne	.Lcc9c8
	mov	r2, #0
	ldr	r6, =0xffff
	ldr	r5, =gBuffer
	mov	r10, r2
.Lcc990:
	bl	Random
	mov	r3, #0xf
	and	r0, r3
	mov	r3, r0
	add	r3, #0x30
	add	r0, #0x28
	str	r3, [r5]
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #1
	mov	r1, #0x80
	and	r0, r6
	add	r10, r3
	lsl	r1, #1
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r10, r1
	bne	.Lcc990
.Lcc9c8:
	mov	r2, #0
	add	r3, sp, #0x24
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	mov	r10, r2
	ldr	r2, =gBuffer
	mov	r9, r3
	mov	r8, r2
.Lcc9d8:
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcc9e0
	add	r3, #3
.Lcc9e0:
	asr	r3, #2
	cmp	r11, r3
	ble	.Lccaae
	mov	r1, r8
	ldr	r3, [r1]
	cmp	r3, #0
	ble	.Lccaae
	bl	InitMatrixStack
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	bl	MatrixRoll
	mov	r3, r8
	ldr	r0, [r3, #0xc]
	bl	MatrixPitch
	mov	r1, r8
	ldr	r0, [r1, #0x10]
	bl	MatrixYaw
	mov	r2, r8
	ldr	r3, [r2]
	add	r4, sp, #0x18
	mov	r1, r9
	str	r3, [r1]
	mov	r0, r9
	mov	r1, r4
	str	r4, [sp, #4]
	bl	Func_80e3944
	ldr	r4, [sp, #4]
	ldr	r3, [r4]
	add	r3, #0x40
	str	r3, [r4]
	ldr	r3, [r4, #4]
	add	r3, #0x50
	str	r3, [r4, #4]
	mov	r2, r8
	ldr	r3, [r2, #4]
	add	r7, sp, #0xc
	mov	r1, r9
	str	r3, [r1]
	mov	r0, r9
	mov	r1, r7
	bl	Func_80e3944
	ldr	r3, [r7]
	add	r3, #0x40
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0x50
	str	r3, [r7, #4]
	mov	r3, r8
	ldr	r2, [r3, #4]
	sub	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r3]
	mov	r1, r8
	sub	r3, #4
	str	r3, [r1]
	ldr	r4, [sp, #4]
	cmp	r2, #0
	bge	.Lcca64
	mov	r3, #0
	str	r3, [r1, #4]
.Lcca64:
	mov	r2, r8
	ldr	r5, [r2, #4]
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	ldr	r2, [r4]
	ldr	r0, [r7]
	asr	r5, #1
	mov	r6, r5
	ldr	r3, [r4, #4]
	ldr	r1, [r7, #4]
	sub	r0, #1
	sub	r2, #1
	add	r6, #0x30
	str	r4, [sp, #4]
	str	r6, [sp]
	bl	DrawLine
	ldr	r4, [sp, #4]
	ldr	r1, [r7, #4]
	ldr	r3, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r7]
	sub	r1, #1
	sub	r3, #1
	str	r6, [sp]
	bl	DrawLine
	ldr	r4, [sp, #4]
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	add	r5, #0x38
	str	r5, [sp]
	bl	DrawLine
.Lccaae:
	mov	r1, #1
	add	r10, r1
	mov	r3, #0x1c
	mov	r2, r10
	add	r8, r3
	cmp	r2, #0x40
	bne	.Lcc9d8
	ldr	r3, [sp, #8]
	ldr	r1, =0x7824
	add	r2, r3, r1
	mov	r3, #1
	str	r3, [r2]
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Anim_UnleashIntro
