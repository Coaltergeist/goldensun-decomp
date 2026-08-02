	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200853c
	push	{r5, lr}
	mov	r5, r0
	bl	__GetPartySize
	cmp	r0, #3
	ble	.L54a
	mov	r0, #3
.L54a:
	cmp	r0, #0
	ble	.L56a
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r3, r2
	mov	r1, r0
.L558:
	ldrb	r2, [r3]
	add	r3, #1
	cmp	r5, #0
	beq	.L564
	strh	r2, [r5]
	add	r5, #2
.L564:
	sub	r1, #1
	cmp	r1, #0
	bne	.L558
.L56a:
	cmp	r5, #0
	beq	.L572
	ldr	r3, .L578	@ 0xff
	strh	r3, [r5]
.L572:
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.L578:
	.word	0xff
	.pool
.func_end OvlFunc_971_200853c
