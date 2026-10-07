	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808c2dc  @ 0x0808c2dc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	_GetPartySize
	cmp	r0, #0
	ble	.L8c302
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L8c2f2:
	ldrb	r0, [r6]
	mov	r1, r7
	sub	r5, #1
	add	r6, #1
	bl	_ModifyPP
	cmp	r5, #0
	bne	.L8c2f2
.L8c302:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808c2dc
