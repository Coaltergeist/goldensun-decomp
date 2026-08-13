	.include "macros.inc"
	.include "gba.inc"

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
