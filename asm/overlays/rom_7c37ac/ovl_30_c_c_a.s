	.include "macros.inc"

.thumb_func_start OvlFunc_938_200806c
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.L8c
	ldr	r5, =.L1df4
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.L8e
.L8c:
	ldr	r0, =gScript_918__02009ddc
.L8e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_938_200806c

.thumb_func_start OvlFunc_938_20080a4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lbc
	ldr	r0, =.L1f38
	b	.Lbe
.Lbc:
	ldr	r0, =.L1f2c
.Lbe:
	pop	{r1}
	bx	r1
.func_end OvlFunc_938_20080a4

