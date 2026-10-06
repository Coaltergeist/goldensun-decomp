	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008cd0
	push	{r5, r6, lr}
	ldr	r0, =0x232
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gState
	ldr	r6, [r3]
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r3, #0x64
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0x8b
	lsl	r1, #2
	add	r2, r1
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	bl	_divsi3_RAM
	mov	r5, r0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_dda
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm933_d28
	cmp	r5, #0x4a
	bgt	.Lm933_d28
	ldr	r0, =0x302
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Lm933_d28:
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm933_d50
	cmp	r5, #0x31
	bgt	.Lm933_d50
	ldr	r0, =0x301
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Lm933_d50:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm933_d7c
	cmp	r5, #0x18
	bgt	.Lm933_d7c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Lm933_d7c:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_d9e
	cmp	r5, #0x18
	ble	.Lm933_d9e
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xc1
	lsl	r0, #1
	add	r2, r6, r0
	mov	r3, #1
	strh	r3, [r2]
.Lm933_d9e:
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_dbc
	cmp	r5, #0x31
	ble	.Lm933_dbc
	ldr	r0, =0x301
	bl	__SetFlag
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #2
	strh	r3, [r2]
.Lm933_dbc:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_dda
	cmp	r5, #0x4a
	ble	.Lm933_dda
	ldr	r0, =0x302
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #3
	strh	r3, [r2]
.Lm933_dda:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008cd0

