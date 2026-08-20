	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079d1c  @ 0x08079d1c
	push	{r5, r6, lr}
	ldr	r2, =0x129
	mov	r5, r0
	add	r3, r5, r2
	ldrb	r3, [r3]
	mov	r0, #1
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	mov	r1, #1
	bl	Func_807882c
	mov	r6, r0
	mov	r0, #1
	cmp	r6, #0
	beq	.L79d6c
	ldrh	r3, [r6, #0xe]
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	bl	CheckEquipmentCritBoost
	ldrb	r2, [r6, #0xb]
	lsl	r3, r2, #2
	add	r3, r2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #16
	bl	__divsi3
	mov	r5, r0
	bl	RPGRandom
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.L79d6a
	ldrh	r0, [r6, #0xe]
	b	.L79d6c
.L79d6a:
	mov	r0, #1
.L79d6c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079d1c

