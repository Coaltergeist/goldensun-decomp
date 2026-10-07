	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200b7c4
	push	{r5, r6, lr}
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	mov	r6, r0
	cmp	r3, r2
	bne	.Lm969_37e2
	ldr	r2, [r5, #0x3c]
.Lm969_37e2:
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm969_37fa
	ldr	r2, [r6, #0x3c]
	cmp	r2, r3
	bne	.Lm969_37fa
	ldr	r3, [r6, #0x40]
	mov	r1, #1
	cmp	r3, r2
	beq	.Lm969_37fc
.Lm969_37fa:
	mov	r1, #0
.Lm969_37fc:
	cmp	r1, #0
	beq	.Lm969_38ae
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r0, =0x235
	strh	r3, [r6, #6]
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_3846
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_8092950
	mov	r2, #0xa0
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.Lm969_3874
	mov	r2, #0x80
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	b	.Lm969_3874
.Lm969_3846:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm969_3864
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092950
	b	.Lm969_3874
.Lm969_3864:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_8092950
.Lm969_3874:
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_38ae
	mov	r2, #0x9c
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	bge	.Lm969_3898
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.Lm969_3898:
	mov	r2, #0xb6
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Lm969_38ae
	ldr	r2, =0xfffff000
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
.Lm969_38ae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b7c4

