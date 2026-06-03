	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_914_2008abc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_914_2008b8c
	mov	r6, #0
.Lac6:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Laf4
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Laf4
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_914_2008b24
	strh	r0, [r5]
.Laf4:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lac6
	bl	OvlFunc_914_2008bcc
	bl	OvlFunc_914_2008bac
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008abc

.thumb_func_start OvlFunc_914_2008b24
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
	bl	_Func_8000af0
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_Func_8000af0
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_Func_8000af0
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.Lb70

	.pool_aligned

.Lb70:
	cmp	r6, #0x1f
	ble	.Lb76
	mov	r6, #0x1f
.Lb76:
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
.func_end OvlFunc_914_2008b24

.thumb_func_start OvlFunc_914_2008b8c
	ldr	r2, =iwram_3001ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L10b0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_914_2008b8c

.thumb_func_start OvlFunc_914_2008bac
	ldr	r2, =iwram_3001ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L17b0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_914_2008bac

.thumb_func_start OvlFunc_914_2008bcc
	push	{lr}
	ldr	r3, =iwram_3001ed0
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
	bl	__Func_8091220
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008bcc

.thumb_func_start OvlFunc_914_2008c0c
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lc1c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L17b0
	b	.Lc20
.Lc1c:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L10b0
.Lc20:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_914_2008bcc
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008c0c

.thumb_func_start OvlFunc_914_2008c4c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.Lc60
	neg	r5, r5
.Lc60:
	ldr	r0, [r6, #0x30]
	bl	__Func_800231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_800231c
	cmp	r0, #0
	bge	.Lc86
	add	r0, #7
.Lc86:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_914_2008c4c

.thumb_func_start OvlFunc_914_2008cb4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_8092054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld18
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.Ld18:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_914_2008c4c
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008cb4

	.section .data
	.global .Lec8
	.global .Lf08
	.global .Lf20
	.global .Lf80

.Lec8:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xec8, (0xf08-0xec8)
.Lf08:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf08, (0xf20-0xf08)
.Lf20:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf20, (0xf80-0xf20)
.Lf80:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf80, (0xfe0-0xf80)
.Lfe0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xfe0, (0xff0-0xfe0)
.Lff0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xff0, (0x1068-0xff0)
.L1068:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0x1068

	.section .bss

	.lcomm	.Lunused_10a8, 4
	.lcomm	.Lunused_10ac, 4
	.lcomm	.L10b0, 0x700
	.lcomm	.L17b0, 0x700
