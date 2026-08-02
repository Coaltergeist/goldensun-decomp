	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008ee0
	push	{r5, r6, lr}
	ldr	r3, =.L7764
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #1
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r5
	sub	r1, #0x3f
	sub	r5, #0x3e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008ee0

.thumb_func_start OvlFunc_959_2008f30
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Lf80
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_959_2008ee0
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
	ldr	r3, =0x332
	add	r5, r3
	mov	r0, r5
	bl	__SetFlag
.Lf80:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008f30

