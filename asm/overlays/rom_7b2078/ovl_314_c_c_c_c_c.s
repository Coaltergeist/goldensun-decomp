	.include "macros.inc"

.thumb_func_start OvlFunc_926_200a68c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__Func_80916b0
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	mov	r1, #7
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #6
	bl	__Func_80924d4
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a68c

.thumb_func_start OvlFunc_926_200a6d8
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r5, =OvlFunc_926_200a5b8
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__StartTask
	ldr	r1, =0x3333
	mov	r0, #0
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__Func_8091df4
	mov	r0, #0x9a
	bl	__Func_80f9080
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	bl	__StopTask
	bl	__Func_8091e20
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a6d8

.thumb_func_start OvlFunc_926_200a764
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #1
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a764

.thumb_func_start OvlFunc_926_200a778
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0x4d
	mov	r2, #8
	ldr	r0, =.L4764
	bl	__Func_8010560
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0x10
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a778

.thumb_func_start OvlFunc_926_200a7ec
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0xfc
	mov	r1, #0xa8
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_809218c
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	ldr	r0, =0x17be
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L28f8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L293c
.L28f8:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r2, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L293c:
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L29ca
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0x3c
	bl	__Func_80937b8
	ldr	r0, =0x17c8
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
.L299c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L29ca
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0x3c
	bl	__Func_80937b8
	ldr	r0, =0x17e0
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	b	.L299c
.L29ca:
	ldr	r0, =0x17c9
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2a28
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2a50
.L2a28:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L2a50:
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #5
	mov	r0, #8
	bl	__Func_80924d4
	ldr	r0, =0x893
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a7ec

.thumb_func_start OvlFunc_926_200aad0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r2, #0x86
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_809218c
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1969
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b9c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L2b9c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2bb0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L2bb0:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2bc4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L2bc4:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xe8
	mov	r2, #0xfc
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xf0
	mov	r2, #0xfc
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xf8
	mov	r2, #0xf8
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xe0
	mov	r2, #0xf8
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	b	.L2ed8

	.pool_aligned

.L2ed8:
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093054
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	b	.L34d8

	.pool_aligned

.L34d8:
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r2, #0x86
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xf4
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #5
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r2, #0xfc
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	b	.L38e8

	.pool_aligned

.L38e8:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xec
	mov	r2, #0x8e
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0x86
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xec
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xe0
	mov	r2, #0x80
	lsl	r1, #1
	strb	r3, [r0]
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_926_200c1ec
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x90
	bl	__Func_8091d94
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xec
	mov	r2, #0x8a
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xf0
	mov	r2, #0x87
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_80923e4
	mov	r0, #8
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xf4
	mov	r2, #0x82
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3d28
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L3d56
.L3d28:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L3d56:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	ldr	r0, =0x895
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200aad0

.thumb_func_start OvlFunc_926_200be58
	push	{r5, lr}
	ldr	r5, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3d
	sub	sp, #8
	cmp	r2, r3
	beq	.L3e70
	b	.L4010
.L3e70:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xe1
	add	r2, #0x49
	str	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L3ed2
	ldr	r0, =0x88f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3ea0
	mov	r0, #8
	mov	r1, #6
	bl	__Func_80924d4
	b	.L4092
.L3ea0:
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	ldr	r0, =0xf14
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3eb4
	b	.L4092
.L3eb4:
	ldr	r0, =0x893
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3ec0
	b	.L4092
.L3ec0:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3ecc
	b	.L4092
.L3ecc:
	bl	OvlFunc_926_200a7ec
	b	.L4092
.L3ed2:
	cmp	r3, #2
	beq	.L3eda
	cmp	r3, #4
	bne	.L3fd6
.L3eda:
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r0, =0x895
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L3f6a
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x50]
	lsl	r2, #8
	str	r2, [r0, #0x1c]
	strh	r2, [r3, #0x1e]
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3fb2
	mov	r1, #0xf8
	mov	r2, #0xd0
	mov	r0, #0x12
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	ldr	r0, =0x89b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3fb2
	mov	r1, #0x80
	mov	r2, #0xf0
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x10
	bl	__Func_80923e4
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_926_2008324
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	b	.L3fb2
.L3f6a:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	mov	r1, #0x80
	ldr	r3, =0xcccc
	lsl	r1, #8
	str	r3, [r0, #0x18]
	str	r1, [r0, #0x1c]
	mov	r3, #0x59
	add	r3, r0
	ldrb	r2, [r3]
	mov	r12, r3
	mov	r3, #8
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	mov	r2, #0xa
	strh	r1, [r3, #0x1e]
	mov	r3, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L3fb2:
	mov	r0, #0x98
	mov	r1, #0xc0
	mov	r2, #0xe0
	lsl	r1, #13
	lsl	r2, #16
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_common0_18
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_80924d4
	b	.L4092
.L3fd6:
	cmp	r3, #3
	bne	.L4092
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3ff0
	bl	OvlFunc_926_200aad0
	b	.L4092
.L3ff0:
	ldr	r0, =0x8b2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4092
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L4092
.L4010:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	mov	r1, #0xe1
	orr	r3, r2
	lsl	r1, #1
	strb	r3, [r0]
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L405c
	ldr	r0, =0xf14
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L405c
	ldr	r0, =0x894
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L405c
	mov	r3, #0xa
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L405c:
	ldr	r0, =0x892
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4092
	mov	r1, #0x98
	mov	r2, #0xc4
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r3, #0xa
	mov	r2, #0x16
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L4092:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_200be58

.thumb_func_start OvlFunc_926_200c0dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r0, #0xa0
	lsl	r0, #1
	mov	r8, r1
	bl	__Func_8079358
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_8096fb0
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	mov	r0, r6
	mov	r1, r8
	bl	__Func_80970f8
	add	r5, #0x23
	mov	r3, #0
	strb	r3, [r5]
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	mov	r0, #1
	bl	__Func_80030f8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c0dc

.thumb_func_start OvlFunc_926_200c128
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_80967e4
	bl	__Func_8097174
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c128

.thumb_func_start OvlFunc_926_200c140
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r5, sp, #0x10
	str	r3, [r5]
	ldr	r3, =0x119
	strh	r3, [r5, #0x18]
	ldr	r3, =.L51d8
	str	r3, [r5, #0x1c]
	mov	r3, #0xe0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x14]
	mov	r7, r0
	mov	r6, #0
.L4168:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L417c
	mov	r0, #0x82
	bl	__Func_80f9080
.L417c:
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffe80000
	add	r2, r3
	ldr	r3, =0x9999
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r3, =0x360001
	add	r6, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r6, #7
	bls	.L4168
	mov	r0, #0x3c
	bl	__Func_809163c
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c140

.thumb_func_start OvlFunc_926_200c1c4
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L41dc
	mov	r1, #0xa
	bl	__Func_80929d8
	b	.L41e2
.L41dc:
	mov	r1, #9
	bl	__Func_80929d8
.L41e2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c1c4

.thumb_func_start OvlFunc_926_200c1ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x83
	sub	sp, #0x38
	bl	__Func_80f9080
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_926_200c1c4
	str	r5, [r0, #0x6c]
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x205c54
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x83
	bl	__Func_80f9080
	mov	r0, #2
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, =0x11d
	strh	r3, [r2, #0x18]
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
.L425a:
	mov	r3, #3
	and	r3, r7
	cmp	r3, #0
	bne	.L4268
	mov	r0, #0xf6
	bl	__Func_80f9080
.L4268:
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r8
	lsl	r3, #4
	ldr	r6, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Random
	mov	r2, r8
	lsl	r0, #5
	ldr	r5, [r2, #0xc]
	lsr	r0, #16
	ldr	r3, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r3
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	mov	r3, r8
	lsl	r0, #15
	add	r0, r2
	ldr	r2, [r3, #0x10]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r9, r3
	mov	r3, #0x98
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
	add	r7, #1
	mov	r0, #2
	bl	__Func_80030f8
	cmp	r7, #0x3f
	bls	.L425a
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r9
	str	r2, [r0, #0x6c]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, r9
	str	r3, [r0, #0x6c]
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092950
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c1ec

	.section .data
	.global .L4638
	.global .L477a
	.global .L4790
	.global .L48f0
	.global .L4998
	.global .L4ae8
	.global .L4b90
	.global .L4d40
	.global .L5184
	.global .L47a8
	.global .L4838

.L4638:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4638, (0x4764-0x4638)
.L4764:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4764, (0x477a-0x4764)
.L477a:
	.incbin "overlays/rom_7b2078/orig.bin", 0x477a, (0x4790-0x477a)
.L4790:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4790, (0x47a8-0x4790)
.L47a8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x47a8, (0x4838-0x47a8)
.L4838:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4838, (0x48c8-0x4838)
.L48c8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48c8, (0x48f0-0x48c8)
.L48f0:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48f0, (0x4998-0x48f0)
.L4998:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4998, (0x4ae8-0x4998)
.L4ae8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4ae8, (0x4b90-0x4ae8)
.L4b90:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4b90, (0x4d40-0x4b90)
.L4d40:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4d40, (0x5184-0x4d40)
.L5184:
	.incbin "overlays/rom_7b2078/orig.bin", 0x5184, (0x51d8-0x5184)
.L51d8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x51d8
