	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b86c  @ 0x0809b86c
	push	{r5, r6, r7, lr}
	mov	r4, r0
	mov	r3, r4
	add	r3, #0x47
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	sub	sp, #0x18
	ldr	r5, [r4]
	mov	r6, #0
	cmp	r3, #0
	beq	.L9b88c
	ldr	r2, [r4, #8]
	mov	r3, #0xfe
	lsl	r3, #17
	sub	r6, r3, r2
.L9b88c:
	ldr	r3, =Func_8000888
	ldr	r0, [r4, #0x28]
	ldr	r1, [r5, #0x18]
	.call_via r3
	str	r0, [sp]
	ldr	r0, [r4, #0x2c]
	ldr	r1, [r5, #0x18]
	.call_via r3
	mov	r7, sp
	str	r0, [r7, #4]
	ldr	r2, [r4, #4]
	add	r1, sp, #8
	str	r2, [r1]
	str	r6, [r1, #4]
	ldr	r0, [r4, #8]
	add	r3, r0, r6
	str	r3, [r1, #8]
	mov	r3, #0
	str	r3, [r1, #0xc]
	ldr	r3, =0x1fffff
	add	r2, r3
	ldr	r3, =0x12ffffe
	cmp	r2, r3
	bhi	.L9b8dc
	ldr	r3, =0xffe00000
	cmp	r0, r3
	ble	.L9b8dc
	mov	r3, #0xe0
	lsl	r3, #16
	cmp	r0, r3
	bge	.L9b8dc
	mov	r0, r5
	mov	r2, r7
	mov	r3, #0
	bl	_UpdateSprite
.L9b8dc:
	add	sp, #0x18
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809b86c
