	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeSanctum_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x80
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x19
	bhi	.Lm888_6c6
	ldr	r2, =.Lm888_60c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_60c:
	.word	.Lm888_674
	.word	.Lm888_674
	.word	.Lm888_674
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_68e
	.word	.Lm888_6a8
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6a0
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6a0
	.word	.Lm888_6c6
	.word	.Lm888_6c6
	.word	.Lm888_6a0
.Lm888_674:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_6a0
	mov	r1, #0xc8
	mov	r2, #0xa0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.Lm888_6a0
.Lm888_68e:
	bl	OvlFunc_888_200b270
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm888_6a0
	bl	OvlFunc_888_200888c
.Lm888_6a0:
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.Lm888_6c6
.Lm888_6a8:
	bl	OvlFunc_888_200b270
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm888_6c0
	bl	OvlFunc_888_200888c
.Lm888_6c0:
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm888_6c6:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end ValeSanctum_MapInit

