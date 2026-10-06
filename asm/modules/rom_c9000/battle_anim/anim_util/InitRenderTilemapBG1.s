	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitRenderTilemapBG1  @ 0x080cdd58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r2, [r3, #0x7c]
	ldr	r5, [r3]
	add	r3, #0x8c
	ldr	r6, [r3]
	mov	r8, r2
	bl	Func_80cd508
	mov	r3, #0xc9
	lsl	r3, #3
	add	r5, r3
	ldrh	r1, [r5]
	mov	r0, #2
	mov	r2, #0
	bl	_Func_80c0774
	ldr	r2, =iwram_3001ad0
	mov	r1, #0
	mov	r3, #0x20
	strh	r3, [r2, #6]
	str	r1, [r6, #0xc]
	ldr	r3, =Func_80008d4
	mov	r1, #0x40
	ldr	r0, =0x6003fc0
	bl	_call_via_r3
	mov	r1, #0x80
	mov	r2, #1
	neg	r2, r2
	ldr	r3, =Func_80008d8
	ldr	r0, =0x600f900
	lsl	r1, #2
	bl	_call_via_r3
	mov	r2, #0x80
	lsl	r2, #1
	ldr	r5, =0x600fb00
	ldr	r7, .Lcddc4	@ 0xff
	mov	r0, #0
	mov	r6, #0
	mov	r12, r2
	mov	r4, #0
.Lcddb2:
	mov	r3, r12
	mov	r1, #0
	add	r2, r4, r3
.Lcddb8:
	cmp	r1, #0xf
	ble	.Lcdde4
	add	r3, r0, r5
	strh	r7, [r3]
	b	.Lcdde8

	.align	2, 0
.Lcddc4:
	.word	0xff
	.pool

.Lcdde4:
	add	r3, r0, r5
	strh	r2, [r3]
.Lcdde8:
	add	r1, #1
	add	r2, #1
	add	r0, #2
	cmp	r1, #0x20
	bne	.Lcddb8
	add	r6, #1
	add	r4, #0x10
	cmp	r6, #0x10
	bne	.Lcddb2
	ldr	r3, .Lcde2c	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Lcde30	@ 0x1f81
	add	r2, #0xa
	strh	r3, [r2]
	ldr	r3, .Lcde34	@ 0x3f42
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r1, .Lcde38	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lcde3c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcde40	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcde44	@ 0x3f21
	b	.Lcde50

	.align	2, 0
.Lcde2c:
	.word	0x7741
.Lcde30:
	.word	0x1f81
.Lcde34:
	.word	0x3f42
.Lcde38:
	.word	0xf0
.Lcde3c:
	.word	0x1088
.Lcde40:
	.word	0x3537
.Lcde44:
	.word	0x3f21
	.pool

.Lcde50:
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =0x100e
	add	r2, #8
	mov	r1, #0x80
	strh	r3, [r2]
	ldr	r5, =Func_80008d4
	mov	r0, r8
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, #1
	bl	WaitFrames
	b	.Lcde84

	.pool_aligned

.Lcde84:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitRenderTilemapBG1
