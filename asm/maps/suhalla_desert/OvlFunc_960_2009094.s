	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2009094
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10ae
	ldr	r0, =0x206
	bl	__SetFlag
.Lm960_10ae:
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10be
	ldr	r0, =0x207
	bl	__SetFlag
.Lm960_10be:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10d0
	mov	r0, #0x82
	lsl	r0, #2
	bl	__SetFlag
.Lm960_10d0:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.Lm960_10d6:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_10fa
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_10f0
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.Lm960_10f0:
	ldr	r0, [r5, #0x50]
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
.Lm960_10fa:
	add	r6, #1
	cmp	r6, #0xa
	ble	.Lm960_10d6
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_1128
	ldr	r0, [r5, #0x50]
	ldr	r2, [r0, #0x28]
	cmp	r2, #0
	beq	.Lm960_1118
	mov	r3, #0xa
	strb	r3, [r2, #5]
.Lm960_1118:
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x25
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
.Lm960_1128:
	ldr	r0, =0x315
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_1138
	ldr	r0, =0x9b7
	bl	__SetFlag
.Lm960_1138:
	ldr	r6, =gDMATaskCount
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lm960_1164
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lm960_1164:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_117c
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_8091ff0
.Lm960_117c:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.Lm960_11ac
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Lm960_11ac:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2009094

