	.include "macros.inc"

.thumb_func_start OvlFunc_925_200b460
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	ldrh	r2, [r6]
	ldr	r1, [r5, #0x68]
	mov	r8, r2
	mov	r0, r8
	mov	r10, r1
	bl	__cos
	ldr	r3, [r5, #0x30]
	add	r3, #0x1c
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__sin
	mov	r2, #0x90
	ldr	r3, [r5, #8]
	lsl	r2, #16
	lsl	r0, #4
	add	r0, r2
	str	r0, [r5, #0x10]
	str	r3, [r5, #0x38]
	str	r0, [r5, #0x40]
	ldr	r1, =0xfffffe00
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b460

.thumb_func_start OvlFunc_925_200b4bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e70
	mov	r10, r0
	ldr	r5, [r3]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	lsl	r3, #16
	add	r5, #0xe8
	mov	r8, r3
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x81
	bgt	.L3540
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3512
	mov	r1, #0x98
	mov	r2, #0x90
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	b	.L3528
.L3512:
	mov	r1, #0x98
	mov	r2, #0x97
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0x14ccc
.L3528:
	str	r5, [r0, #0x18]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	b	.L354e

	.pool_aligned

.L3540:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #12
	lsl	r2, #12
	bl	__MapActor_SetPos
.L354e:
	mov	r1, r10
	cmp	r1, #0
	beq	.L3618
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.L3618
	mov	r0, r10
	ldr	r2, [r0, #0xc]
	ldr	r1, [r1, #8]
	mov	r3, #0x80
	lsl	r3, #12
	add	r2, r8
	add	r1, r3
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__CreateActor
	mov	r1, #0xc0
	lsl	r1, #11
	mov	r7, r0
	mov	r0, r8
	bl	_divsi3_RAM
	mov	r8, r0
	mov	r1, r8
	lsl	r1, #16
	mov	r8, r1
	cmp	r7, #0
	beq	.L3618
	ldr	r1, =gScript_925__0200bc54
	mov	r0, r7
	ldr	r5, [r7, #0x50]
	bl	__Actor_SetScript
	mov	r1, #3
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	and	r3, r0
	add	r2, #0x64
	ldr	r0, .L35f4	@ 0
	strh	r3, [r2]
	mov	r3, r7
	mov	r9, r0
	add	r3, #0x66
	ldr	r0, =0xfffff
	strh	r6, [r3]
	mov	r2, r8
	ldr	r3, =OvlFunc_925_200b460
	mov	r1, r10
	and	r0, r2
	str	r1, [r7, #0x68]
	str	r3, [r7, #0x6c]
	asr	r0, #4
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r5
	add	r3, #0x26
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, r10
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	b	.L360c

	.align	2, 0
.L35f4:
	.word	0
	.pool

.L360c:
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
.L3618:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b4bc

	.section .data
	.global .L3c50
	.global .L39d4
	.global gOvl_0200b938

gOvl_0200b938:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3938, (0x39c8-0x3938)
	.global gOvl_0200b9c8
gOvl_0200b9c8:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39c8, (0x39d4-0x39c8)
.L39d4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39d4, (0x3be4-0x39d4)
	.global gOvl_0200bbe4
gOvl_0200bbe4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3be4, (0x3c50-0x3be4)
.L3c50:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c50, (0x3c54-0x3c50)
	.global gScript_925__0200bc54
gScript_925__0200bc54:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c54
