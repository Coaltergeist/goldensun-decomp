	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FieldMove_NoTarget  @ 0x08096810
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	mov	r2, #0x1e
	ldrsh	r6, [r5, r2]
	sub	r3, #0x74
	ldr	r1, [r3]
	mov	r3, #0x1a
	ldrsh	r7, [r5, r3]
	sub	r3, r6, #1
	cmp	r3, #0xf
	bls	.L9682e
	b	.L9693e
.L9682e:
	ldr	r2, =.L96838
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L96838:
	.word	.L96878
	.word	.L9690c
	.word	.L968a2
	.word	.L9688a
	.word	.L96890
	.word	.L9689c
	.word	.L9687e
	.word	.L96928
	.word	.L968b4
	.word	.L9692e
	.word	.L96884
	.word	.L968a8
	.word	.L968ae
	.word	.L96896
	.word	.L96934
	.word	.L9693a
.L96878:
	bl	Field_Move
	b	.L9693e
.L9687e:
	bl	Field_Lift
	b	.L9693e
.L96884:
	bl	Field_Carry
	b	.L9693e
.L9688a:
	bl	Field_Force
	b	.L9693e
.L96890:
	bl	Field_Douse
	b	.L9693e
.L96896:
	bl	Field_Whirlwind
	b	.L9693e
.L9689c:
	bl	Field_Frost
	b	.L9693e
.L968a2:
	bl	Field_Ply
	b	.L9693e
.L968a8:
	bl	Field_Growth
	b	.L9693e
.L968ae:
	bl	Field_Catch
	b	.L9693e
.L968b4:
	ldr	r2, =0x24a
	ldr	r5, =gState
	add	r7, r5, r2
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L968ce
	bl	Func_809ade8
	ldr	r3, =0xffff
	strh	r3, [r7]
.L968ce:
	mov	r3, #0xfa
	lsl	r3, #1
	add	r3, r5
	ldr	r0, [r3]
	mov	r1, r6
	mov	r8, r3
	bl	Func_808df1c
	bl	Func_809ae3c
	mov	r5, r0
	bl	FindSpeakEvent
	cmp	r0, #0
	beq	.L96906
	mov	r2, r8
	ldr	r0, [r2]
	mov	r1, r5
	bl	Func_80970f8
	mov	r0, r5
	bl	Field_Halt_Target
	mov	r0, r5
	bl	Func_809ad90
	strh	r5, [r7]
	b	.L9693e
.L96906:
	bl	Field_Halt
	b	.L9693e
.L9690c:
	ldr	r2, =0xcb8
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L9691c
	bl	Func_80984c0
.L9691c:
	mov	r3, #0x18
	ldrsh	r0, [r5, r3]
	mov	r1, r7
	bl	Field_MindRead
	b	.L9693e
.L96928:
	bl	Field_Reveal
	b	.L9693e
.L9692e:
	bl	Field_Cloak
	b	.L9693e
.L96934:
	bl	Field_Retreat
	b	.L9693e
.L9693a:
	bl	Field_Avoid
.L9693e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end FieldMove_NoTarget
