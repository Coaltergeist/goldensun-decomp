	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009e08
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__PlaySound
	mov	r0, #0xb6
	bl	__PlaySound
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r3, #8
	mov	r5, #0
	mov	r8, r3
	mov	r7, #7
	mov	r6, #1
.Lm922_1e2e:
	ldr	r0, =0x204318
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #0
	bne	.Lm922_1e68
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #8
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
.Lm922_1e68:
	mov	r1, #1
	ldr	r0, =0x203108
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	add	r5, #1
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #3
	bls	.Lm922_1e2e
	mov	r0, #0x1e
	bl	__WaitFrames
	ldr	r5, =OvlFunc_922_2009d78
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x201090
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, #0x82
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0xe6
	bl	__Func_8078a08
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009e08

