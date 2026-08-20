	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_20080c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	mov	r5, #8
	mov	r7, #0
.Lm950_ca:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm950_da
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
.Lm950_da:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm950_ca
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #0xe
	bl	__PlaySound
	lsl	r5, #3
	ldr	r0, =.Lm950_1dcc
	add	r3, r5, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r5]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_20080c0

