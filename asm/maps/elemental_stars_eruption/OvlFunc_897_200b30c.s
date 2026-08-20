	.include "macros.inc"
	.include "gba.inc"

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
