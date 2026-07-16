	.include "macros.inc"

	.section .text.after_8fec, "ax", %progbits

.thumb_func_start OvlFunc_883_20090d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, =0x808
	sub	sp, #0xc
	bl	__GetFlag
	cmp	r0, #0
	bne	.L11b2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r8, r3
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	ldr	r0, =0xf4d
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r8
	str	r7, [r3]
	mov	r10, r2
	mov	r6, #0
	mov	r5, r7
.L114e:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L114e
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0xf4f
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r6, #0
	mov	r5, r7
.L1180:
	ldr	r3, [r5, #8]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L1180
	mov	r3, r10
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x46
	ldr	r2, =0x2e5
	bl	__Func_80921c4
	bl	__CutsceneEnd
.L11b2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20090d8
