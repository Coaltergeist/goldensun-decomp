	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80270ac  @ 0x080270ac
	push	{r5, lr}
	mov	r5, r9
	push	{r5}
	sub	sp, #8
	mov	r5, sp
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r3, #0xff
	strh	r3, [r5]
	bl	Func_802281c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_80c10e8
	add	sp, #8
	pop	{r3}
	mov	r9, r3
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80270ac
