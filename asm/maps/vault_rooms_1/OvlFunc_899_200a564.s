	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200a564
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xb
	cmp	r3, #7
	bls	.Lm899_257c
	b	.Lm899_2690
.Lm899_257c:
	ldr	r2, =.Lm899_2584
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm899_2584:
	.word	.Lm899_25a4
	.word	.Lm899_25b8
	.word	.Lm899_25d8
	.word	.Lm899_25fe
	.word	.Lm899_2618
	.word	.Lm899_262c
	.word	.Lm899_2652
	.word	.Lm899_2678
.Lm899_25a4:
	ldr	r3, =.Lm899_55b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d8bc
	mov	r0, #0x19
	mov	r1, #3
	b	.Lm899_25f6
.Lm899_25b8:
	ldr	r3, =gScript_899__0200d678
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_55d8
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d830
	mov	r0, #0x19
	mov	r1, #1
	b	.Lm899_2610
.Lm899_25d8:
	ldr	r3, =.Lm899_5538
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_5718
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_5894
	mov	r0, #0x19
	mov	r1, #2
.Lm899_25f6:
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	b	.Lm899_2690
.Lm899_25fe:
	ldr	r3, =.Lm899_55b0
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d858
	mov	r0, #0x19
	mov	r1, #4
.Lm899_2610:
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	b	.Lm899_2690
.Lm899_2618:
	ldr	r3, =.Lm899_56c8
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_57cc
	mov	r0, #0x19
	mov	r1, #1
	b	.Lm899_2670
.Lm899_262c:
	ldr	r3, =gScript_899__0200d560
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_56f0
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_57a4
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	b	.Lm899_2690
.Lm899_2652:
	ldr	r3, =gScript_899__0200d650
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.Lm899_5600
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_956__0200d808
	mov	r0, #0x19
	mov	r1, #4
.Lm899_2670:
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	b	.Lm899_2690
.Lm899_2678:
	ldr	r3, =.Lm899_56c8
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d768
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
.Lm899_2690:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a564

