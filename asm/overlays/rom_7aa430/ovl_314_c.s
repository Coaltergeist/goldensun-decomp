	.include "macros.inc"

.thumb_func_start OvlFunc_d58
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, r0
	ldr	r2, [r1, #0x10]
	asr	r3, r2, #19
	cmp	r3, #0x16
	bgt	.Ld7e
	ldr	r0, [r5, #0x10]
	ldr	r1, [r1, #8]
	ldr	r3, [r5, #8]
	sub	r0, r2, r0
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	b	.Ld90
.Ld7e:
	mov	r1, #0xc0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	cmp	r3, r1
	beq	.Ld90
	mov	r0, #3
	mov	r2, #0
	bl	__Func_92adc
.Ld90:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d58

	.section .data
	.global .L2700
	.global .L2740
	.global .L2758

.L2700:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2700, (0x2740-0x2700)
.L2740:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2740, (0x2758-0x2740)
.L2758:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2758, (0x27b8-0x2758)
