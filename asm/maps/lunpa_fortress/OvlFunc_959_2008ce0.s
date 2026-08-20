	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2008ce0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Lm959_d40
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
	beq	.Lm959_d10
	cmp	r5, #4
	beq	.Lm959_d40
.Lm959_d10:
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
.Lm959_d40:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008ce0

