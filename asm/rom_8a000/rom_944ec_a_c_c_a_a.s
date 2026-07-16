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
	bl	Func_808d5a4
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

.thumb_func_start FieldMove_Target  @ 0x08096960
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	mov	r2, #0x1e
	ldrsh	r1, [r6, r2]
	sub	r3, #0x74
	mov	r2, r6
	ldr	r0, [r3]
	add	r2, #0x20
	mov	r3, #0x1a
	ldrsh	r5, [r6, r3]
	sub	r1, #1
	mov	r3, #0
	strb	r3, [r2]
	cmp	r1, #0xf
	bls	.L96982
	b	.L96a92
.L96982:
	ldr	r2, =.L9698c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L9698c:
	.word	.L96a02
	.word	.L969cc
	.word	.L96a64
	.word	.L96a1a
	.word	.L96a22
	.word	.L96a2a
	.word	.L96a0a
	.word	.L96a7c
	.word	.L96a3a
	.word	.L96a82
	.word	.L96a12
	.word	.L96a32
	.word	.L96a74
	.word	.L96a6c
	.word	.L96a88
	.word	.L96a8e
.L969cc:
	ldr	r1, =0xcb8
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L969dc
	bl	Func_80984c0
.L969dc:
	ldr	r1, =0x24a
	ldr	r3, =gState
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, #0x1a
	ldrsh	r3, [r6, r1]
	cmp	r2, r3
	beq	.L969f6
	ldr	r3, [r6, #0x14]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
.L969f6:
	mov	r2, #0x18
	ldrsh	r0, [r6, r2]
	mov	r1, r5
	bl	Field_MindRead
	b	.L96a92
.L96a02:
	mov	r0, r5
	bl	Field_Move_Target
	b	.L96a92
.L96a0a:
	mov	r0, r5
	bl	Field_Lift_Target
	b	.L96a92
.L96a12:
	mov	r0, r5
	bl	Field_Carry_Target
	b	.L96a92
.L96a1a:
	mov	r0, r5
	bl	Field_Force_Target
	b	.L96a92
.L96a22:
	mov	r0, r5
	bl	Field_Douse_Target
	b	.L96a92
.L96a2a:
	mov	r0, r5
	bl	Field_Frost_Target
	b	.L96a92
.L96a32:
	mov	r0, r5
	bl	Field_Growth_Target
	b	.L96a92
.L96a3a:
	ldr	r3, =gState
	ldr	r1, =0x24a
	add	r6, r3, r1
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L96a54
	bl	Func_809ade8
	ldr	r3, =0xffff
	strh	r3, [r6]
.L96a54:
	mov	r0, r5
	bl	Func_809ad90
	strh	r5, [r6]
	mov	r0, r5
	bl	Field_Halt_Target
	b	.L96a92
.L96a64:
	mov	r0, r5
	bl	Field_Ply_Target
	b	.L96a92
.L96a6c:
	mov	r0, r5
	bl	Field_Whirlwind_Target
	b	.L96a92
.L96a74:
	mov	r0, r5
	bl	Field_Catch_Target
	b	.L96a92
.L96a7c:
	bl	Field_Reveal
	b	.L96a92
.L96a82:
	bl	Field_Cloak
	b	.L96a92
.L96a88:
	bl	Field_Retreat
	b	.L96a92
.L96a8e:
	bl	Field_Avoid
.L96a92:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end FieldMove_Target

.thumb_func_start Func_8096ab0  @ 0x08096ab0
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	mov	r1, #0x1e
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bne	.L96adc
	bl	Func_8097608
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, #0x1a
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	beq	.L96adc
	ldr	r3, [r5, #0x14]
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
.L96adc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8096ab0

.thumb_func_start Func_8096af0  @ 0x08096af0
	push	{lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	mov	r2, #0x1e
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L96b14
	cmp	r3, #0xa
	bhi	.L96b08
	cmp	r3, #8
	beq	.L96b0e
	b	.L96b1e
.L96b08:
	cmp	r3, #0x10
	beq	.L96b1a
	b	.L96b1e
.L96b0e:
	bl	Func_80984c0
	b	.L96b1e
.L96b14:
	bl	Func_8099738
	b	.L96b1e
.L96b1a:
	bl	Func_809b648
.L96b1e:
	pop	{r0}
	bx	r0
.func_end Func_8096af0

