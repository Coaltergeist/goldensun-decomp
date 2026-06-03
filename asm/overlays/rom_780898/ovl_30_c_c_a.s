	.include "macros.inc"

.thumb_func_start OvlFunc_883_20089f0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.La06
	ldr	r0, =.L6e48
	b	.La24
.La06:
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La14
	ldr	r0, =.L6cc8
	b	.La24
.La14:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La22
	ldr	r0, =.L6ab8
	b	.La24
.La22:
	ldr	r0, =.L68a8
.La24:
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_20089f0

.thumb_func_start OvlFunc_883_2008a44
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1a
	bl	__Func_80923e4
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__Func_8079358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008a44

.thumb_func_start OvlFunc_883_2008a74
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__Func_8079358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008a74

.thumb_func_start OvlFunc_883_2008aa4
	push	{lr}
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lab4
	ldr	r0, =.L7334
	b	.Lac4
.Lab4:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lac2
	ldr	r0, =.L7100
	b	.Lac4
.Lac2:
	ldr	r0, =.L6f38
.Lac4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_2008aa4

.thumb_func_start OvlFunc_883_2008adc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lafc
	ldr	r0, =0x11cc
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	b	.Lb14
.Lafc:
	ldr	r0, =0xf81
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #4
	bl	__Func_8092848
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093054
.Lb14:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008adc

.thumb_func_start OvlFunc_883_2008b28
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb48
	ldr	r0, =0x11c9
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	b	.Lb8a
.Lb48:
	ldr	r0, =0x806
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb72
	ldr	r0, =0x806
	bl	__Func_8079358
	ldr	r0, =0xf7c
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #4
	bl	__Func_8092848
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093054
	b	.Lb8a
.Lb72:
	ldr	r0, =0xf7e
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #4
	bl	__Func_8092848
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.Lb8a:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008b28

.thumb_func_start OvlFunc_883_2008ba8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x807
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lc2e
	ldr	r0, =0x807
	bl	__Func_8079358
	ldr	r0, =0xf63
	bl	__Func_8092b94
	mov	r0, #0x12
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #0x12
	mov	r2, #0x14
	bl	__Func_8092848
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0x12
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	b	.Lc48
.Lc2e:
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_80937b8
	ldr	r0, =0xf66
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.Lc48:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008ba8

