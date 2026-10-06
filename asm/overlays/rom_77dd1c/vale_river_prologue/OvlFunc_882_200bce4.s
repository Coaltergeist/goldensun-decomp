	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200bce4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.Lm882_3d78
	cmp	r3, #0x3c
	bne	.Lm882_3d22
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldrh	r2, [r6]
.Lm882_3d22:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #14
	cmp	r3, r1
	bne	.Lm882_3d3e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	ldrh	r2, [r6]
.Lm882_3d3e:
	mov	r1, #0xf0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.Lm882_3d5a
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldrh	r2, [r6]
.Lm882_3d5a:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.Lm882_3d74
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	ldrh	r2, [r6]
.Lm882_3d74:
	sub	r3, r2, #1
	strh	r3, [r6]
.Lm882_3d78:
	ldr	r2, [r7, #8]
	str	r2, [r5, #8]
	ldr	r3, [r7, #0x10]
	str	r2, [r5, #0x38]
	mov	r2, r8
	str	r3, [r5, #0x10]
	add	r2, #0x23
	mov	r3, #0xa
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lm882_3df2
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r0, r3, #1
	cmp	r0, #8
	bhi	.Lm882_3dea
	ldr	r2, =.Lm882_3dac
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm882_3dac:
	.word	.Lm882_3dd0
	.word	.Lm882_3ddc
	.word	.Lm882_3ddc
	.word	.Lm882_3dd6
	.word	.Lm882_3dd0
	.word	.Lm882_3ddc
	.word	.Lm882_3ddc
	.word	.Lm882_3ddc
	.word	.Lm882_3ddc
.Lm882_3dd0:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xa3d
	b	.Lm882_3de0
.Lm882_3dd6:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x51e
	b	.Lm882_3de0
.Lm882_3ddc:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xfffff852
.Lm882_3de0:
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.Lm882_3dea:
	ldr	r3, [r5, #0x18]
	mov	r1, r8
	str	r3, [r1, #0x18]
	b	.Lm882_3df6
.Lm882_3df2:
	mov	r3, r8
	str	r2, [r3, #0x18]
.Lm882_3df6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200bce4

