	.include "macros.inc"
.thumb_func_start OvlFunc_905_2008a00
	push	{lr}
	mov	r3, r0
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.La34
	cmp	r3, #1
	bgt	.La18
	cmp	r3, #0
	beq	.La1e
	b	.La54
.La18:
	cmp	r3, #2
	beq	.La40
	b	.La54
.La1e:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	b	.La54
.La34:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	b	.La4a
.La40:
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
.La4a:
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	str	r3, [r0, #0x40]
.La54:
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008a00
