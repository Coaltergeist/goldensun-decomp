	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =ewram_2000240
	ldr	r3, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	sub	r1, #0x32
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lc42
	bl	__Func_80916b0
	lsl	r3, r6, #1
	ldr	r7, =0x2073
	add	r5, r3, r6
	add	r0, r5, r7
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, r8
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc2e
	add	r0, r7, #1
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #2
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__Func_8091dc8
	bl	__Func_8091e20
	b	.Lc3e
.Lc2e:
	add	r0, r7, #2
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.Lc3e:
	bl	__Func_8091750
.Lc42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008ba4

.thumb_func_start OvlFunc_956_2008c5c
	push	{r5, r6, lr}
	bl	OvlFunc_common1_16f8
	bl	__Func_80916b0
	mov	r1, #0x11
	mov	r0, #3
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
	mov	r5, #9
.Lc76:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_80920e8
	cmp	r5, #0
	bge	.Lc76
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xbf
	mov	r0, #8
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xbb
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xbc
	mov	r0, #0
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0xbe
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	mov	r1, #9
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_8091eb0
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x91
	mov	r1, #4
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8091fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008c5c

.thumb_func_start OvlFunc_956_2008d70
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld7e
	bl	__Func_8093c00
.Ld7e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008d70

.thumb_func_start OvlFunc_956_2008d84
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld94
	bl	__Func_8093c00
	b	.Ld98
.Ld94:
	bl	OvlFunc_956_200857c
.Ld98:
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008d84

