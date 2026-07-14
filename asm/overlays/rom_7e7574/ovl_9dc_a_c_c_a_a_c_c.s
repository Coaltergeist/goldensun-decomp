	.include "macros.inc"

.section .text.after_8c90, "ax", %progbits

.thumb_func_start OvlFunc_959_2008ce0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Ld40
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldr	r0, =0x941
	mov	r5, r7
	sub	r5, #0x28
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld10
	cmp	r5, #4
	beq	.Ld40
.Ld10:
	mov	r0, r5
	bl	OvlFunc_959_2008c90
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0xca
	lsl	r3, #2
	add	r0, r7, r3
	bl	__SetFlag
.Ld40:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008ce0

.thumb_func_start OvlFunc_959_2008d54
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =.L773c
	lsl	r3, r0, #3
	ldr	r7, [r2, r3]
	add	r3, #4
	ldr	r6, [r2, r3]
	sub	sp, #8
	mov	r8, r0
	mov	r1, #0x4d
	mov	r0, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	add	r3, r7, #1
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r5, r6
	mov	r1, r6
	sub	r1, #0x2d
	sub	r5, #0x2c
	mov	r0, r7
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, r8
	cmp	r1, #1
	bne	.Ldba
	mov	r3, r6
	sub	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_8010704
.Ldba:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008d54

.section .text.after_8ee0, "ax", %progbits
