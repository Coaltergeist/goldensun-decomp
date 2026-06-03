	.include "macros.inc"

.thumb_func_start OvlFunc_959_200c9a0
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L49ae
	b	.L4b2e
.L49ae:
	ldr	r0, =0x94e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L49ba
	b	.L4b1e
.L49ba:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L49c8
	b	.L4b1e
.L49c8:
	ldr	r5, =0x2561
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x18
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #4
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__Func_80923c4
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #6
	mov	r0, #0x18
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_809280c
	mov	r0, #0x18
	bl	__Func_80923c4
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0x18
	mov	r0, #0x19
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8092f84
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x19
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xdc
	lsl	r1, #2
	mov	r2, #0x70
	mov	r0, #0x19
	bl	__Func_809218c
	mov	r0, #0x19
	bl	__Func_80923c4
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__Func_80923c4
	add	r5, #4
	mov	r1, #5
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0x19
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079358
	b	.L4b3c
.L4b1e:
	ldr	r0, =0x2567
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4b3c
.L4b2e:
	ldr	r0, =0x244d
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
.L4b3c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200c9a0

.thumb_func_start OvlFunc_959_200cb68
	push	{lr}
	mov	r0, #0x1a
	mov	r1, #1
	mov	r2, #5
	bl	__Func_80955b0
	ldr	r0, =0x94e
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cb68

.thumb_func_start OvlFunc_959_200cb84
	push	{lr}
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2441
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cb84

.thumb_func_start OvlFunc_959_200cba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x2440
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cba4

.thumb_func_start OvlFunc_959_200cbc4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x243f
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbc4

.thumb_func_start OvlFunc_959_200cbe4
	push	{lr}
	ldr	r0, =0x2459
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbe4

.thumb_func_start OvlFunc_959_200cbfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4c18
	ldr	r0, =0x2434
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4cee
.L4c18:
	bl	__Func_80916b0
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	ldr	r0, =0x227
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_80920a0
	mov	r0, #0x14
	bl	__Func_80920e8
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__Func_80937b8
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
.L4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_80937b8
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L4cd6
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
	ldr	r0, =0x226
	bl	__Func_8079358
	b	.L4ce4
.L4cd6:
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
.L4ce4:
	ldr	r0, =0x227
	bl	__Func_8079358
	bl	__Func_8091750
.L4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbfc

