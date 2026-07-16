	.include "macros.inc"

	.section .text.after_86e8, "ax", %progbits

.thumb_func_start OvlFunc_888_200874c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0xb4
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ed0
	ldr	r0, =0xe5a
	ldr	r2, [r3]
	ldr	r4, =0xe5c
	mov	r1, #0xf8
	add	r3, r2, r0
	lsl	r1, #7
	strh	r1, [r3]
	add	r3, r2, r4
	add	r4, #2
	strh	r1, [r3]
	add	r3, r2, r4
	strh	r1, [r3]
	mov	r1, #0xa8
	ldr	r0, .L7f8	@ 0
	lsl	r1, #6
	ldr	r4, =0x2a01
	add	r3, r2, r1
	strb	r0, [r3]
	ldr	r0, =0x2a02
	add	r3, r2, r4
	mov	r1, #1
	strb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	ldr	r3, =0x2a03
	add	r2, r3
	strb	r1, [r2]
	mov	r0, #1
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r0, =0x116d
	mov	r1, #1
	bl	__Func_8019aa0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	b	.L81c

	.align	2, 0
.L7f8:
	.word	0
	.pool

.L81c:
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_888_200a7d4
	cmp	r0, #0
	bne	.L83a
	bl	__CutsceneEnd
	mov	r0, #0x14
	bl	__Func_8091e9c
	b	.L844
.L83a:
	bl	__CutsceneEnd
	mov	r0, #0x32
	bl	__Func_8091e9c
.L844:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200874c
