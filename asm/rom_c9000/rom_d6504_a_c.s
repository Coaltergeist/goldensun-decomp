	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Summon  @ 0x080d6578
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, =0x302
	mov	r0, #0x29
	bl	galloc_iwram
	ldr	r1, =0x782c
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld662c
	sub	r3, #1
	cmp	r3, #0xb
	bhi	.Ld663a
	ldr	r2, =.Ld65ac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ld65ac:
	.word	.Ld65dc
	.word	.Ld65e4
	.word	.Ld65ec
	.word	.Ld65f4
	.word	.Ld65fc
	.word	.Ld6604
	.word	.Ld660c
	.word	.Ld6614
	.word	.Ld661c
	.word	.Ld6624
	.word	.Ld662c
	.word	.Ld6634
.Ld65dc:
	mov	r0, r5
	bl	Anim_Ramses
	b	.Ld663a
.Ld65e4:
	mov	r0, r5
	bl	Anim_Nereid
	b	.Ld663a
.Ld65ec:
	mov	r0, r5
	bl	Anim_Kirin
	b	.Ld663a
.Ld65f4:
	mov	r0, r5
	bl	Anim_Atalanta
	b	.Ld663a
.Ld65fc:
	mov	r0, r5
	bl	Anim_Cybele
	b	.Ld663a
.Ld6604:
	mov	r0, r5
	bl	Anim_Neptune
	b	.Ld663a
.Ld660c:
	mov	r0, r5
	bl	Anim_Tiamat
	b	.Ld663a
.Ld6614:
	mov	r0, r5
	bl	Anim_Procne
	b	.Ld663a
.Ld661c:
	mov	r0, r5
	bl	Anim_Judgment
	b	.Ld663a
.Ld6624:
	mov	r0, r5
	bl	Anim_Boreas
	b	.Ld663a
.Ld662c:
	mov	r0, r5
	bl	Anim_Meteor
	b	.Ld663a
.Ld6634:
	mov	r0, r5
	bl	Anim_Thor
.Ld663a:
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	mov	r0, #0x29
	bl	gfree
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Anim_Summon

	.section .text.after, "ax", %progbits


	.section .text.after_d67dc, "ax", %progbits

.thumb_func_start Func_80d67dc  @ 0x080d67dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e74
	mov	r1, #0x80
	ldr	r6, [r3, #0x7c]
	ldr	r2, [r3]
	ldr	r3, .Ld6820	@ 1
	lsl	r1, #19
	strh	r3, [r1]
	mov	r8, r1
	ldr	r1, =iwram_3001ad0
	mov	r3, #0x20
	strh	r3, [r1, #6]
	mov	r3, #0xc9
	lsl	r3, #3
	add	r2, r3
	ldrh	r1, [r2]
	mov	r0, #1
	mov	r2, #0x18
	sub	sp, #4
	bl	_AnimTransitionIn
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	b	.Ld6834

	.align	2, 0
.Ld6820:
	.word	1
	.pool

.Ld6834:
	mov	r0, r4
	ldr	r1, =0x6004000
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld6860	@ 0x100e
	strh	r3, [r2]
	ldr	r3, .Ld6864	@ 0x3f46
	sub	r2, #2
	strh	r3, [r2]
	ldr	r3, .Ld6868	@ 0x7741
	mov	r1, r8
	ldr	r2, =gPhysVec
	strh	r3, [r1]
	mov	r3, #0x78
	str	r3, [r2, #0x10]
	add	sp, #4
	b	.Ld687c

	.align	2, 0
.Ld6860:
	.word	0x100e
.Ld6864:
	.word	0x3f46
.Ld6868:
	.word	0x7741
	.pool

.Ld687c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80d67dc

	.section .text.after_d6960, "ax", %progbits
