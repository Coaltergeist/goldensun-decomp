	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_200869c
	push	{r5, r6, lr}
	mov	r0, #3
	bl	__Func_8079338
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r0, =0x14ce
	bl	__Func_8092b94
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8009
	bl	__Func_8093040
	mov	r0, #0x1d
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #3
	bl	__Func_8092064
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L742
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L742:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L756
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L756:
	cmp	r6, #0
	beq	.L776
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L76e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L76e:
	ldr	r1, =gScript_918__02009e2c
	mov	r0, #3
	bl	__Func_809207c
.L776:
	ldr	r1, =gScript_918__02009db4
	mov	r0, #0
	bl	__Func_809207c
	ldr	r1, =gScript_918__02009ddc
	mov	r0, #1
	bl	__Func_809207c
	ldr	r1, =gScript_918__02009e04
	mov	r0, #2
	bl	__Func_80920fc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0xb
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #8
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0xb
	bl	OvlFunc_918_2009424
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xb
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x2d
	mov	r1, #0x13
	bl	__Func_8091f90
	mov	r0, #0x24
	mov	r1, #0
	bl	__Func_8091eb0
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_200869c

.thumb_func_start OvlFunc_918_2008918
	push	{r5, r6, r7, lr}
	mov	r0, #3
	sub	sp, #8
	bl	__Func_8079338
	mov	r7, r0
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	mov	r1, #2
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0xb8
	bl	__Func_8078698
	mov	r0, #0x11
	bl	__Func_80f9080
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xa6
	mov	r2, #0xa0
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0x94
	mov	r2, #0xb4
	lsl	r1, #16
	lsl	r2, #15
	strh	r6, [r0, #6]
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0xb6
	mov	r2, #0xb4
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #2
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r0, #2
	bl	__MapActor_GetActor
	strh	r6, [r0, #6]
	cmp	r7, #0
	beq	.L9ec
	mov	r1, #0xa6
	mov	r2, #0xd0
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r0, #3
	bl	__MapActor_GetActor
	strh	r6, [r0, #6]
.L9ec:
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x30
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r1, #0x23
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x50
	bl	__Func_80030f8
	ldr	r0, =0x14d3
	bl	__Func_8092b94
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	bl	OvlFunc_918_2009424
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_80f9080
	mov	r0, #4
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8009
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
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x50
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8009
	bl	__Func_8093040
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x8009
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
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8002
	bl	__Func_8093040
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r6
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #4
	bl	OvlFunc_918_2009424
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lcf6
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	ldr	r0, =0x14dd
	bl	__Func_8092b94
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0xa
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_8092f84
.Lcf6:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #4
	bl	OvlFunc_918_2009424
	ldr	r0, =0x14df
	bl	__Func_8092b94
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8093040
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	b	.Ld90

	.pool_aligned

.Ld90:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r2, =.L2dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L2dc0
	mov	r3, #0xa8
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_918_200962c
	mov	r3, #0xd0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0xdc
	bl	__Func_809163c
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r0, #4
	bl	OvlFunc_918_2009424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8093040
	mov	r0, #0
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =gScript_918__02009e54
	mov	r0, #8
	bl	__Func_80920fc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r7, #0
	beq	.Leba
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x8003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.Leba:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	ldr	r5, =gScript_918__02009ec8
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	cmp	r7, #0
	beq	.Lef0
	mov	r0, #3
	mov	r1, r5
	bl	__Func_809207c
.Lef0:
	mov	r1, r5
	mov	r0, #2
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x844
	bl	__Func_8079358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_918_2009244
	bl	__StartTask
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2008918

.thumb_func_start OvlFunc_918_2008f58
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.Lf6e
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lf6e
	bl	OvlFunc_918_2008918
.Lf6e:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x844
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lfde
	mov	r3, #0x5d
	str	r3, [sp]
	mov	r6, #0xa
	mov	r0, #0x79
	mov	r1, #0x22
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r5, #0x1e
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	b	.Lff2
.Lfde:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.Lff2:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2008f58

.thumb_func_start OvlFunc_918_2009004
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, =.L2dd0
	ldr	r3, =ewram_2001000
	mov	r8, r0
	str	r3, [r2]
	bl	OvlFunc_918_2009224
	ldr	r5, =0xfff60000
	mov	r3, r8
	mov	r1, r8
	add	r3, #0x55
	mov	r6, #0
	strb	r6, [r3]
	mov	r0, #9
	str	r5, [r1, #0xc]
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
	mov	r1, #0xf
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__Func_8092950
	mov	r0, #0
	bl	OvlFunc_918_2009424
	ldr	r7, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r2, r7
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r8, r2
	cmp	r3, #0x13
	beq	.L1062
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_918_2009244
	lsl	r1, #4
	bl	__StartTask
.L1062:
	ldr	r0, =0x844
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1080
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L1080:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L108e
	bl	OvlFunc_918_20097ec
.L108e:
	ldr	r6, =iwram_3001e70
	ldr	r2, [r6]
	mov	r14, r2
	mov	r3, r14
	add	r3, #0xec
	ldr	r0, [r3]
	mov	r5, #0x82
	mov	r3, #0xa0
	lsl	r3, #16
	lsl	r5, #1
	add	r5, r14
	ldr	r4, =Func_8000888
	add	r0, r3
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #8]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r3, r14
	add	r3, #0xf0
	ldr	r0, [r3]
	mov	r1, #0x88
	lsl	r1, #16
	add	r0, r1
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, =0xe666
	ldr	r0, =0x201
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__Func_8079358
	ldr	r0, =0x20d
	bl	__Func_8079358
	ldr	r0, =0x20f
	bl	__Func_8079358
	ldr	r0, =0x213
	bl	__Func_8079358
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	bl	OvlFunc_918_2008f58
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r1, r8
	sub	r2, #0xe
	mov	r3, #0
	ldrsh	r6, [r1, r3]
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r8, r3
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r7, r0
	cmp	r6, #0x32
	beq	.L112a
	cmp	r6, #0x28
	beq	.L112a
	cmp	r6, #0x1e
	beq	.L112a
	cmp	r6, #0x14
	bne	.L11b0
.L112a:
	bl	__Func_8091dc8
	mov	r1, #0x1b
	mov	r0, r8
	bl	__Func_80924d4
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r8
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #2
	strb	r5, [r3]
	mov	r3, #0xc8
	lsl	r3, #15
	str	r3, [r7, #0xc]
	ldr	r3, =0xff600000
	str	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x48]
	mov	r0, #0xcc
	bl	__Func_80f9080
	mov	r1, r6
	sub	r1, #0xa
	ldr	r0, =0x2d
	bl	__Func_8091e3c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, r7
	add	r3, #0x22
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, r8
	bl	__Func_8092b08
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #8
	bl	__Func_809163c
	b	.L11ce
.L11b0:
	cmp	r6, #0xa
	bne	.L11c4
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L11ce
	bl	OvlFunc_918_20098b8
	b	.L11ce
.L11c4:
	cmp	r6, #0x13
	bne	.L11ce
	mov	r0, #1
	bl	OvlFunc_918_2008f58
.L11ce:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_918_2009004

