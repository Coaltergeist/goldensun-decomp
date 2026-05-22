	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_9e8
	ldr	r0, =.L1028
	bx	lr
.func_end OvlFunc_9e8

.thumb_func_start OvlFunc_9f0
	ldr	r0, =.L1038
	bx	lr
.func_end OvlFunc_9f0

.thumb_func_start OvlFunc_9f8
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.La9c
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_608
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	bne	.La9c
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0xc
	bne	.La9c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x12
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x10
	mov	r3, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_244
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.La9c:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9f8

.thumb_func_start OvlFunc_aac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r1, r5
	mov	r10, r3
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb92
	bl	__Func_916b0
	mov	r1, #6
	mov	r0, r6
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r6
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	mov	r3, #2
	ldrsh	r1, [r5, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r6
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c528
	mov	r3, r8
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #0xa
	bl	__Func_924d4
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	mov	r0, #4
	str	r3, [r6, #0x14]
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r10
	strb	r3, [r7]
	bl	__Func_91750
	mov	r0, #1
	b	.Lb94
.Lb92:
	mov	r0, #0
.Lb94:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_aac

.thumb_func_start OvlFunc_ba4
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r5, =0xfff00000
	ldr	r2, [r0, #8]
	mov	r4, #0x80
	lsl	r4, #12
	and	r2, r5
	mov	r1, sp
	add	r3, r2, r4
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r5
	add	r3, r4
	str	r3, [r1, #8]
	mov	r3, #0xa0
	lsl	r3, #14
	add	r2, r3
	str	r2, [r1]
	mov	r0, r1
	bl	OvlFunc_aac
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ba4

.thumb_func_start OvlFunc_bf0
	ldr	r0, =.L1098
	bx	lr
.func_end OvlFunc_bf0

.thumb_func_start OvlFunc_bf8
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_8c0
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc5a
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x10
	mov	r3, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_244
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.Lc5a:
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #9
	bl	OvlFunc_8c0
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc76
	mov	r0, #6
	bl	OvlFunc_c8c
.Lc76:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_bf8

.thumb_func_start OvlFunc_c8c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_d5c
	mov	r6, #0
.Lc96:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Lcc4
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Lcc4
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_cf4
	strh	r0, [r5]
.Lcc4:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lc96
	bl	OvlFunc_d9c
	bl	OvlFunc_d7c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c8c

.thumb_func_start OvlFunc_cf4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xf8
	lsl	r0, #16
	lsl	r3, #13
	and	r3, r0
	asr	r6, r3, #16
	ldr	r2, =0x1f
	mov	r8, r1
	lsr	r5, r0, #21
	lsr	r7, r0, #26
	lsl	r1, #2
	mov	r0, r6
	and	r5, r2
	and	r7, r2
	bl	_Func_af0
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_Func_af0
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_Func_af0
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.Ld40

	.pool_aligned

.Ld40:
	cmp	r6, #0x1f
	ble	.Ld46
	mov	r6, #0x1f
.Ld46:
	lsl	r3, r7, #10
	lsl	r2, r5, #5
	orr	r3, r2
	orr	r6, r3
	lsl	r0, r6, #16
	lsr	r0, #16
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cf4

.thumb_func_start OvlFunc_d5c
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L10e0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_d5c

.thumb_func_start OvlFunc_d7c
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L17e0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_d7c

.thumb_func_start OvlFunc_d9c
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, [r3]
	mov	r0, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	mov	r1, r4
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	pop	{r0}
	bx	r0
.func_end OvlFunc_d9c

.thumb_func_start OvlFunc_ddc
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Ldec
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L17e0
	b	.Ldf0
.Ldec:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L10e0
.Ldf0:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	bl	OvlFunc_d9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_ddc

	.section .data
	.global .Lf10
	.global .Lf50
	.global .Lf68
	.global .Lfc8

.Lf10:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf10, (0xf50-0xf10)
.Lf50:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf50, (0xf68-0xf50)
.Lf68:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf68, (0xfc8-0xf68)
.Lfc8:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xfc8, (0x1028-0xfc8)
.L1028:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1028, (0x1038-0x1028)
.L1038:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1038, (0x1098-0x1038)
.L1098:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1098

	.section .bss

	.lcomm	.Lunused_10d8, 4
	.lcomm	.Lunused_10dc, 4
	.lcomm	.L10e0, 0x700
	.lcomm	.L17e0, 0x700
