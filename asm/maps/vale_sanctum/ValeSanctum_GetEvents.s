	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeSanctum_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x28
	bhi	.Lm888_224
	ldr	r2, =.Lm888_168
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_168:
	.word	.Lm888_20c
	.word	.Lm888_210
	.word	.Lm888_20c
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_214
	.word	.Lm888_214
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_21c
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_218
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_220
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_214
.Lm888_20c:
	ldr	r0, =.Lm888_3e70
	b	.Lm888_242
.Lm888_210:
	ldr	r0, =.Lm888_3ec4
	b	.Lm888_242
.Lm888_214:
	ldr	r0, =.Lm888_3f0c
	b	.Lm888_242
.Lm888_218:
	ldr	r0, =.Lm888_40ec
	b	.Lm888_242
.Lm888_21c:
	ldr	r0, =.Lm888_4038
	b	.Lm888_242
.Lm888_220:
	ldr	r0, =.Lm888_4080
	b	.Lm888_242
.Lm888_224:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_232
	ldr	r0, =.Lm888_3fd8
	b	.Lm888_242
.Lm888_232:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_240
	ldr	r0, =.Lm888_3f78
	b	.Lm888_242
.Lm888_240:
	ldr	r0, =.Lm888_3e34
.Lm888_242:
	pop	{r1}
	bx	r1
.func_end ValeSanctum_GetEvents

