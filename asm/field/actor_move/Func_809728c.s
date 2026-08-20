	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809728c  @ 0x0809728c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	sub	r3, #0x74
	ldr	r5, [r6, #0x10]
	ldr	r3, [r3]
	mov	r0, r5
	mov	r1, #0x14
	mov	r10, r3
	mov	r2, #0x1c
	ldrsh	r7, [r6, r2]
	bl	_Actor_SetAnim
	ldr	r3, [r5, #8]
	str	r3, [r5, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x22
	add	r3, r6
	mov	r8, r3
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L972da
	mov	r0, #0xd4
	bl	_PlaySound
	ldr	r3, =Func_8096f14
	str	r3, [r5, #0x6c]
.L972da:
	mov	r3, r6
	add	r3, #0x23
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L97330
	mov	r0, r5
	mov	r1, #1
	mov	r2, #0
	bl	Func_8096cdc
	mov	r0, r7
	mov	r1, #4
	bl	_Func_8019908
	mov	r3, r6
	add	r3, #0x21
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L97318
	ldr	r2, =0x71c
	add	r3, r6, r2
	ldr	r0, =0x926
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_801776c
	b	.L97326
.L97318:
	ldr	r2, =0x71c
	add	r3, r6, r2
	ldr	r0, =0x926
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_801776c
.L97326:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x10
	bl	Func_8096cdc
.L97330:
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L97354
	mov	r2, r8
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L9734a
	ldr	r3, =Func_8096f50
	str	r3, [r5, #0x6c]
.L9734a:
	mov	r0, r5
	mov	r1, #0x15
	bl	_Actor_SetAnim
	b	.L97358
.L97354:
	bl	Func_8097174
.L97358:
	ldr	r2, =0xcc7
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809728c

	.section .rodata
	.global GFX_PsynergyRing

GFX_PsynergyRing:
	.incrom 0x9c410, 0x9c510
