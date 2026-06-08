	.include "macros.inc"

.thumb_func_start OvlFunc_930_20080b8
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Ld0
	ldr	r0, =.L1a38
	b	.Ld2
.Ld0:
	ldr	r0, =.L1918
.Ld2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_20080b8

.thumb_func_start OvlFunc_930_20080e8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1958
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L118
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	b	.L130
.L118:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093054
.L130:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20080e8

.thumb_func_start OvlFunc_930_2008140
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x195d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008140

.thumb_func_start OvlFunc_930_2008160
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1961
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008160

.thumb_func_start OvlFunc_930_2008180
	push	{lr}
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0x43
	mov	r2, #6
	ldr	r0, =.L1788
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
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008180

.thumb_func_start OvlFunc_930_20081ec
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #0x88
	mov	r2, #0xa8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xa0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r2, #0xc8
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xe0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
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
	mov	r0, #3
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x19e9
	bl	__Func_8092b94
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
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L400
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L464

	.pool_aligned

.L400:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L464:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
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
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
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
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x1e
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xbc
	bl	__Func_80f9080
	ldr	r0, =.L1788
	mov	r1, #0x43
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #0x88
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r2, #6
	mov	r1, #0x43
	ldr	r0, =.L179e
	bl	__Func_8010560
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	__Func_809202c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
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
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
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
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #2
	mov	r1, #0x80
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
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
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r0, #2
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80923e4
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20081ec

.thumb_func_start OvlFunc_930_200884c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x1956
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_200884c

.thumb_func_start OvlFunc_930_2008870
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r1, #0xac
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008870

.thumb_func_start OvlFunc_930_20088a8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x15
	mov	r1, #0x49
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088a8

.thumb_func_start OvlFunc_930_20088e0
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L900
	mov	r0, #0xf
	bl	__Func_80b29a8
	b	.L90e
.L900:
	ldr	r0, =0x1a1e
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
.L90e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088e0

.thumb_func_start OvlFunc_930_2008924
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L932
	b	.La9e
.L932:
	bl	__Func_80916b0
	mov	r1, #0x86
	mov	r2, #0xd8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0xa
	bl	__Func_80923e4
	ldr	r0, =0x18b5
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_930_2008054
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bne	.L986
	mov	r1, #0xdc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_80921c4
.L986:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0xa
	lsl	r1, #10
	bl	__Func_8092064
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #0xcc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
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
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	ldr	r1, =gScript_930__0200962c
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__Func_8079358
	mov	r0, #0xa
	bl	__Func_80920e8
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r1, =gScript_930__020096b8
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_80920e8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x6c]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x78
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091750
.La9e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008924

.thumb_func_start OvlFunc_930_2008ac0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x18b9
	bl	__Func_8092b94
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lafa
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lafa:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008ac0

.thumb_func_start OvlFunc_930_2008b2c
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x19cf
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #9
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
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
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
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	bl	__Func_8091750
	ldr	r0, =0x8b1
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008b2c

.thumb_func_start OvlFunc_930_2008c30
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0x19da
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x8a
	mov	r0, #8
	mov	r1, #0xb2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x8e
	mov	r1, #0xac
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #8
	bl	__Func_80923c4
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x3333
	mov	r0, #8
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r2, =0x1999
	mov	r0, #0xa
	ldr	r1, =0x3333
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x7d
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x7d
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80920a0
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093054
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x7d
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x7d
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0x94
	mov	r0, #0xa
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_80924d4
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
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
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
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091750
	ldr	r0, =0x8b2
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r0, #6
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008c30

.thumb_func_start OvlFunc_930_2008fcc
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x1a12
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008fcc

.thumb_func_start OvlFunc_930_2008ff0
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__Func_8010424
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #5
	bl	__Func_8010704
	mov	r0, #1
	bl	__Func_809163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008ff0

.thumb_func_start OvlFunc_930_2009028
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__Func_8010424
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #6
	bl	__Func_8010704
	mov	r0, #1
	bl	__Func_809163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2009028

.thumb_func_start OvlFunc_930_2009060
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0xc]
	ldr	r2, [r0, #0xc]
	cmp	r2, r3
	ble	.L107e
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	b	.L1088
.L107e:
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
.L1088:
	strb	r3, [r1]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_2009060

