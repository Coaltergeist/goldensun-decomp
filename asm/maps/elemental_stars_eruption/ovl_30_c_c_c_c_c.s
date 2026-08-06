	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200b01c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xca
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #0x44
	bl	__galloc_ewram
	str	r0, [sp, #0x40]
	str	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	mov	r2, #0xc8
	str	r0, [sp, #0x38]
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.Lm897_304e
	b	.Lm897_32e2
.Lm897_304e:
	add	r1, #8
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x40]
	str	r0, [sp, #8]
	ldr	r0, =.Lm897_3a0c
	mov	r10, r1
	ldr	r1, =.Lm897_3a2a
	add	r3, #0x24
	add	r4, #0x25
	add	r0, #1
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r0, [sp, #4]
	str	r1, [sp]
.Lm897_306a:
	mov	r3, r10
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r5, [r2]
	str	r3, [sp, #0x34]
	mov	r4, r10
	ldr	r4, [r4, #0xc]
	str	r4, [sp, #0x30]
	mov	r0, r10
	ldr	r0, [r0, #0x10]
	str	r0, [sp, #0x2c]
	mov	r1, r10
	ldr	r1, [r1, #0x14]
	str	r1, [sp, #0x28]
	mov	r2, r10
	ldr	r2, [r2, #0x18]
	ldr	r4, [sp, #0x3c]
	str	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	ldr	r4, [r4, #4]
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x3c]
	str	r4, [sp, #0x1c]
	ldr	r0, [r0, #8]
	ldr	r2, [sp, #0x3c]
	str	r0, [sp, #0x18]
	ldr	r2, [r2, #0xc]
	mov	r11, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	ldrb	r3, [r3]
	str	r3, [sp, #0x20]
	add	r3, #0xff
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r11
	str	r3, [sp, #0x20]
	cmp	r3, #0
	beq	.Lm897_30ba
	b	.Lm897_326e
.Lm897_30ba:
	mov	r4, #3
	str	r4, [sp, #0x20]
	cmp	r1, #0
	bne	.Lm897_310e
	ldr	r0, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x38]
	add	r0, r2
	str	r0, [sp, #0x28]
	ldr	r3, =.Lm897_3a68
	lsl	r2, r4, #2
	ldr	r3, [r3, r2]
	cmp	r0, r3
	blt	.Lm897_30e0
	ldr	r3, =.Lm897_3a90
	ldr	r3, [r3, r2]
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.Lm897_3108
.Lm897_30e0:
	ldr	r0, [sp, #0x28]
	ldr	r3, =0x1999
	cmp	r0, r3
	bgt	.Lm897_3108
	ldr	r3, =.Lm897_3a90
	ldr	r4, =0x1999
	ldr	r3, [r3, r2]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x24]
	ldr	r2, [r5, #8]
	str	r2, [sp, #0x1c]
	ldr	r3, [r5, #0xc]
	str	r3, [sp, #0x18]
	ldr	r4, [r5, #0x10]
	mov	r0, #0x18
	str	r4, [sp, #0x14]
	str	r1, [r5, #8]
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	mov	r11, r0
.Lm897_3108:
	ldr	r0, [sp, #0x28]
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
.Lm897_310e:
	bl	__Random
	ldr	r2, =.Lm897_3a0c
	ldr	r1, [sp, #8]
	ldrb	r3, [r1, r2]
	mul	r3, r0
	lsr	r6, r3, #16
	bl	__Random
	ldr	r4, [sp, #4]
	ldrb	r3, [r4]
	mul	r3, r0
	lsr	r7, r3, #16
	bl	__Random
	ldr	r1, [sp, #4]
	ldrb	r3, [r1, #1]
	mul	r3, r0
	lsr	r3, #16
	mov	r8, r3
	cmp	r6, #0
	beq	.Lm897_3148
	mov	r1, #0xfa
	lsl	r0, r6, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	mov	r6, r0
	b	.Lm897_314a
.Lm897_3148:
	mov	r6, #0
.Lm897_314a:
	cmp	r7, #0
	beq	.Lm897_315c
	mov	r1, #0xfa
	lsl	r0, r7, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	mov	r9, r0
	b	.Lm897_3160
.Lm897_315c:
	mov	r2, #0
	mov	r9, r2
.Lm897_3160:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lm897_3172
	mov	r1, #0xfa
	lsl	r0, r3, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	b	.Lm897_3174
.Lm897_3172:
	mov	r0, #0
.Lm897_3174:
	ldr	r2, =.Lm897_3a48
	ldr	r4, [sp, #8]
	ldrsb	r3, [r2, r4]
	cmp	r3, #1
	bne	.Lm897_3186
	ldr	r1, [sp, #0x34]
	add	r1, r6
	str	r1, [sp, #0x34]
	b	.Lm897_3198
.Lm897_3186:
	ldr	r4, [sp, #0x34]
	mov	r1, #1
	sub	r4, r6
	neg	r1, r1
	str	r4, [sp, #0x34]
	cmp	r3, r1
	beq	.Lm897_3198
	mov	r3, #0
	str	r3, [sp, #0x34]
.Lm897_3198:
	ldr	r3, [sp, #8]
	add	r3, #1
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.Lm897_31aa
	ldr	r4, [sp, #0x30]
	add	r4, r9
	str	r4, [sp, #0x30]
	b	.Lm897_31be
.Lm897_31aa:
	ldr	r1, [sp, #0x30]
	mov	r4, r9
	sub	r1, r4
	str	r1, [sp, #0x30]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.Lm897_31be
	mov	r3, #0
	str	r3, [sp, #0x30]
.Lm897_31be:
	ldr	r3, [sp, #8]
	add	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.Lm897_31d0
	ldr	r4, [sp, #0x2c]
	add	r4, r0
	str	r4, [sp, #0x2c]
	b	.Lm897_31e2
.Lm897_31d0:
	ldr	r1, [sp, #0x2c]
	mov	r2, #1
	sub	r1, r0
	neg	r2, r2
	str	r1, [sp, #0x2c]
	cmp	r3, r2
	beq	.Lm897_31e2
	mov	r3, #0
	str	r3, [sp, #0x2c]
.Lm897_31e2:
	ldr	r4, [sp]
	ldr	r1, [sp, #0x34]
	ldrb	r3, [r4]
	mov	r0, r3
	mul	r0, r1
	bl	__sin
	ldr	r2, [sp]
	ldr	r4, [sp, #0x30]
	ldrb	r3, [r2, #1]
	lsl	r6, r0, #1
	mov	r0, r3
	mul	r0, r4
	bl	__sin
	lsl	r7, r0, #1
	ldr	r0, [sp]
	ldr	r1, [sp, #0x2c]
	ldrb	r3, [r0, #2]
	mov	r0, r3
	mul	r0, r1
	bl	__cos
	mov	r2, r11
	lsl	r0, #1
	cmp	r2, #0
	beq	.Lm897_3250
	ldr	r3, [sp, #0x1c]
	add	r3, r6
	str	r3, [sp, #0x1c]
	mov	r3, r11
	ldr	r4, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	add	r3, #0xff
	lsl	r3, #24
	add	r4, r7
	add	r1, r0
	lsr	r3, #24
	str	r4, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r11, r3
	cmp	r3, #0
	bne	.Lm897_326e
	ldr	r2, [sp, #0x1c]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r2, [r5, #0x38]
	cmp	r3, #0
	beq	.Lm897_3248
	str	r4, [r5, #0xc]
	str	r4, [r5, #0x3c]
.Lm897_3248:
	ldr	r4, [sp, #0x14]
	str	r4, [r5, #0x10]
	str	r4, [r5, #0x40]
	b	.Lm897_326e
.Lm897_3250:
	ldr	r3, [r5, #8]
	mov	r1, r9
	add	r3, r6
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	cmp	r1, #0
	beq	.Lm897_3266
	ldr	r3, [r5, #0xc]
	add	r3, r7
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
.Lm897_3266:
	ldr	r3, [r5, #0x10]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.Lm897_326e:
	ldr	r2, [sp, #0x34]
	mov	r3, r10
	str	r2, [r3, #8]
	ldr	r4, [sp, #0x30]
	str	r4, [r3, #0xc]
	ldr	r0, [sp, #0x2c]
	str	r0, [r3, #0x10]
	ldr	r1, [sp, #0x28]
	str	r1, [r3, #0x14]
	ldr	r2, [sp, #0x24]
	str	r2, [r3, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r3, r11
	strb	r3, [r4]
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x3c]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x18]
	mov	r3, r10
	str	r2, [r3]
	ldr	r4, [sp, #0x14]
	add	r0, sp, #0x20
	str	r4, [r1, #0xc]
	ldrb	r0, [r0]
	ldr	r1, [sp, #0x10]
	strb	r0, [r1]
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	add	r1, #3
	add	r2, #3
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	str	r1, [sp]
	str	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	add	r3, #3
	add	r4, #1
	add	r1, #0x28
	add	r2, #0x28
	str	r3, [sp, #4]
	str	r4, [sp, #0x38]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, [sp, #0x3c]
	mov	r0, #0x28
	add	r3, #0x28
	add	r10, r0
	ldr	r4, [sp, #0x40]
	mov	r0, #0xc8
	str	r3, [sp, #0x3c]
	lsl	r0, #1
	add	r3, r4, r0
	ldrh	r3, [r3]
	ldr	r1, [sp, #0x38]
	cmp	r1, r3
	beq	.Lm897_32e2
	b	.Lm897_306a
.Lm897_32e2:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200b01c

.thumb_func_start OvlFunc_897_200b30c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r1, #0xca
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #4
	bl	__galloc_ewram
	mov	r3, #0
	mov	r9, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r5, r9
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x85000065
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	cmp	r2, #0xa
	bls	.Lm897_3348
	mov	r3, #0xa
	mov	r8, r3
.Lm897_3348:
	mov	r2, #0
	mov	r3, r8
	mov	r10, r2
	cmp	r3, #0
	beq	.Lm897_339a
	mov	r11, r2
	mov	r7, #0
.Lm897_3356:
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r11
	add	r3, #0x26
	str	r0, [r5]
	add	r0, #0x55
	strb	r2, [r3]
	strb	r2, [r0]
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c548
	ldr	r2, =.Lm897_3a68
	ldr	r3, [r7, r2]
	str	r3, [r5, #0x1c]
	ldr	r3, =.Lm897_3a90
	ldr	r3, [r3, r7]
	mov	r2, r5
	neg	r3, r3
	str	r3, [r5, #0x20]
	add	r2, #0x24
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r7, #4
	add	r5, #0x28
	add	r6, #1
	cmp	r10, r8
	bne	.Lm897_3356
.Lm897_339a:
	mov	r3, #0xc8
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b01c
	bl	__StartTask
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200b30c

	.section .data
	.global .Lm897_3684
	.global gScript_897__0200ba00
	.global gOvl_0200b6d4
	.global gOvl_0200b704
	.global gOvl_0200b710
	.global gOvl_0200b998

	.incbin "overlays/rom_791794/orig.bin", 0x362c, (0x3684-0x362c)
.Lm897_3684:
	.incbin "overlays/rom_791794/orig.bin", 0x3684, (0x36d4-0x3684)
gOvl_0200b6d4:
	.incbin "overlays/rom_791794/orig.bin", 0x36d4, (0x3704-0x36d4)
gOvl_0200b704:
	.incbin "overlays/rom_791794/orig.bin", 0x3704, (0x3710-0x3704)
gOvl_0200b710:
	.incbin "overlays/rom_791794/orig.bin", 0x3710, (0x3998-0x3710)
gOvl_0200b998:
	.incbin "overlays/rom_791794/orig.bin", 0x3998, (0x3a00-0x3998)
gScript_897__0200ba00:
	.incbin "overlays/rom_791794/orig.bin", 0x3a00, (0x3a0c-0x3a00)
.Lm897_3a0c:
	.incbin "overlays/rom_791794/orig.bin", 0x3a0c, (0x3a2a-0x3a0c)
.Lm897_3a2a:
	.incbin "overlays/rom_791794/orig.bin", 0x3a2a, (0x3a48-0x3a2a)
.Lm897_3a48:
	.incbin "overlays/rom_791794/orig.bin", 0x3a48, (0x3a68-0x3a48)
.Lm897_3a68:
	.incbin "overlays/rom_791794/orig.bin", 0x3a68, (0x3a90-0x3a68)
.Lm897_3a90:
	.incbin "overlays/rom_791794/orig.bin", 0x3a90

	.section .bss
	.global .Lm897_3ac0
	.global .Lm897_3b00
	.global .Lm897_3b10
	.global .Lm897_3b40
	.global .Lm897_3b68
	.global .Lm897_3b6c
	.global .Lm897_3b70

	.lcomm	.Lm897_unused_3ab8, 4
	.lcomm	.Lm897_unused_3abc, 4
	.lcomm	.Lm897_3ac0, 0x40
	.lcomm	.Lm897_3b00, 4
	.lcomm	.Lm897_unused_3b04, 4
	.lcomm	.Lm897_unused_3b08, 4
	.lcomm	.Lm897_unused_3b0c, 4
	.lcomm	.Lm897_3b10, 0x28
	.lcomm	.Lm897_unused_3b38, 4
	.lcomm	.Lm897_unused_3b3c, 4
	.lcomm	.Lm897_3b40, 0x28
	.lcomm	.Lm897_3b68, 4
	.lcomm	.Lm897_3b6c, 4
	.lcomm	.Lm897_3b70, 4
