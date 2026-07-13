	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200832c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L33e:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L360
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L360
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L368
.L360:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L33e
	mov	r0, #0
.L368:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200832c


	.section .text.after_84f4, "ax", %progbits

.thumb_func_start OvlFunc_968_2008558
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r7, =0x212
	mov	r5, r3
	mov	r6, #8
	add	r5, #0x34
.L566:
	ldmia	r5!, {r0}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r2, [r3]
	lsl	r3, r2, #16
	asr	r3, #20
	cmp	r3, r7
	bne	.L57e
	mov	r1, #0xf
	and	r1, r2
	bl	__Func_80929d8
.L57e:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L566
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008558
