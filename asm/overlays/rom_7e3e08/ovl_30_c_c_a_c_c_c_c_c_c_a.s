	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008b30
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x4d
	bl	__Func_808fe38
	ldr	r3, =0x52a
	ldr	r5, [r5, #0x10]
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x1d1d
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	bl	OvlFunc_957_2008a54
	b	.Lb9a
.Lb7e:
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
.Lb9a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b30

.section .text.after_8bc8, "ax", %progbits
