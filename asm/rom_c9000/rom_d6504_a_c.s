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

	.section .text.after_d6960, "ax", %progbits
