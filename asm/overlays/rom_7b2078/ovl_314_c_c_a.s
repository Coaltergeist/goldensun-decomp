	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008388
	push	{r5, lr}
	ldr	r1, =ewram_2000240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L3a0
	ldr	r0, =.L48f0
	b	.L3f4
.L3a0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L3b2
	ldr	r0, =.L4ae8
	b	.L3f4
.L3b2:
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3ea
	ldr	r0, =.L4998
	ldr	r1, =0x895
	mov	r3, r0
	add	r3, #0x7a
	strh	r1, [r3]
	add	r3, #0x30
	strh	r1, [r3]
	mov	r2, r0
	mov	r3, #0x90
	add	r2, #0xc8
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xf8
	add	r2, #8
	lsl	r3, #16
	str	r3, [r2]
	mov	r2, #0x85
	lsl	r2, #1
	add	r3, r0, r2
	add	r2, #0x18
	strh	r1, [r3]
	add	r3, r0, r2
	strh	r1, [r3]
.L3ea:
	ldr	r5, =.L4998
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.L3f4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_2008388

.thumb_func_start OvlFunc_926_2008414
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x178a
	bl	__Func_8092b94
	mov	r0, #0x89
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L43c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.L43c:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L45a
	mov	r0, #0x89
	lsl	r0, #4
	bl	__Func_8079358
	b	.L46a
.L45a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L46a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008414

.thumb_func_start OvlFunc_926_2008484
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x88f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4a8
	ldr	r0, =0x17d6
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__Func_8091750
	b	.L500
.L4a8:
	ldr	r0, =0x1794
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L4f4:
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L500:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008484

.thumb_func_start OvlFunc_926_2008518
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #9
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__Func_80916b0
	ldr	r0, =0x17b4
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xc4
	mov	r0, #0
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x84
	bl	__Func_80f9080
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r0, #0x28]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #11
	mov	r9, r2
	str	r2, [r0, #0x48]
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r2, #0xc4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	mov	r10, r3
	bl	__Func_8092adc
	mov	r0, #0x84
	bl	__Func_80f9080
	add	r4, sp, #0x10
	mov	r3, #7
	str	r3, [r4, #4]
	ldr	r2, [r6, #0x10]
	mov	r8, r4
	mov	r3, #0x80
	mov	r4, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r5, #0
	str	r4, [sp, #8]
	add	r2, r9
	mov	r4, r8
	lsl	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r6, #0x10]
	mov	r3, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r4, r8
	str	r3, [sp, #8]
	add	r2, r9
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r6, #0x10]
	mov	r4, r10
	ldr	r1, [r6, #0xc]
	ldr	r0, [r6, #8]
	add	r2, r9
	str	r4, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r4, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_809202c
	mov	r3, #0xa
	mov	r2, #0x16
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xa
	bl	__Func_8010704
	ldr	r0, =0x892
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008518

.thumb_func_start OvlFunc_926_2008658
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	ldr	r0, =0x894
	bl	__Func_8079358
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x17b7
	bl	__Func_8092b94
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #0xa
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008658

.thumb_func_start OvlFunc_926_200871c
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.L782
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #5
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
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
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x17ac
	bl	__Func_8092b94
	b	.L9a8
.L782:
	ldr	r0, =0x179f
	bl	__Func_8092b94
	mov	r1, #8
	mov	r0, #0
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	bl	OvlFunc_926_200c128
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #5
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L858
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__Func_809163c
	bl	OvlFunc_926_200c128
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	b	.L870
.L858:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
.L870:
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #8
	bl	__Func_80937b8
	ldr	r0, =0x17a4
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L8ee
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__Func_809163c
	bl	OvlFunc_926_200c128
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L91a
.L8ee:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
.L91a:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0xec
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
.L9a8:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L9d4
	ldr	r0, =0x17ab
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	b	.La7c
.L9d4:
	ldr	r0, =0x17ad
	bl	__Func_8092b94
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8093500
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	bl	__Func_8091e20
	bl	__Func_8093530
	bl	OvlFunc_926_200c140
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	ldr	r0, =0x891
	bl	__Func_8079358
.La7c:
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200871c

.thumb_func_start OvlFunc_926_2008abc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17b1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008abc

.thumb_func_start OvlFunc_926_2008adc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1825
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008adc

.thumb_func_start OvlFunc_926_2008afc
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	b	.Lb16
.Lb10:
	mov	r0, #1
	bl	__Func_80030f8
.Lb16:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bgt	.Lb10
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0xc]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_809280c
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb68
	ldr	r0, =0x1a5b
	bl	__Func_8092b94
	b	.Lb92
.Lb68:
	ldr	r0, =0x89b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb8c
	ldr	r0, =0x189e
	bl	__Func_8092b94
	b	.Lb92

	.pool_aligned

.Lb8c:
	ldr	r0, =0x182a
	bl	__Func_8092b94
.Lb92:
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, .Lbc0	@ 0
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_809207c
	bl	__Func_8091750
	b	.Lbcc

	.align	2, 0
.Lbc0:
	.word	0
	.pool

.Lbcc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008afc

.thumb_func_start OvlFunc_926_2008bd4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x182d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008bd4

.thumb_func_start OvlFunc_926_2008bf4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #8
	mov	r7, r0
	mov	r8, r6
.Lc08:
	ldr	r3, [r7, #0x50]
	lsl	r5, r6, #12
	strh	r5, [r3, #0x1e]
	mov	r0, r8
	bl	__Func_80030f8
	mov	r0, r5
	bl	__Func_800231c
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__Func_8002322
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #0x10]
	mov	r3, #2
	neg	r3, r3
	sub	r6, #1
	add	r8, r3
	cmp	r6, #3
	bhi	.Lc08
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #0xe3
	bl	__Func_80f9080
	mov	r6, #0x80
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xfff40000
	lsl	r6, #12
	ldr	r4, =0x6666
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffffcccd
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xa0
	ldr	r4, =0x3333
	lsl	r3, #12
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffff0000
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008bf4

.thumb_func_start OvlFunc_926_2008cd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #8
	mov	r7, r0
.Lce6:
	ldr	r3, [r7, #0x50]
	mov	r0, #0xc
	lsl	r5, r6, #12
	sub	r0, r6
	strh	r5, [r3, #0x1e]
	lsl	r0, #1
	bl	__Func_80030f8
	mov	r0, r5
	bl	__Func_800231c
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__Func_8002322
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	add	r6, #1
	str	r3, [r7, #0x10]
	cmp	r6, #0xc
	bls	.Lce6
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	ldr	r3, =0xffff3334
	mov	r0, #0xe3
	str	r3, [r7, #0x18]
	bl	__Func_80f9080
	ldr	r0, [r7, #8]
	ldr	r3, =0xfff40000
	ldr	r2, [r7, #0x10]
	mov	r6, #0x80
	lsl	r6, #12
	ldr	r4, =0x3333
	add	r0, r3
	mov	r3, #0x80
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r2, r6
	lsl	r3, #9
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xcccc
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	mov	r3, #0xa0
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	add	r0, r3
	ldr	r3, =0x6666
	ldr	r1, [r7, #0xc]
	add	r2, r6
	str	r3, [sp]
	mov	r3, r8
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008cd4

.thumb_func_start OvlFunc_926_2008db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Ldd0:
	mov	r0, r5
	bl	__Func_80030f8
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r7, #0x10]
	add	r6, #1
	mov	r3, r8
	str	r3, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Ldd0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #0xe3
	bl	__Func_80f9080
	ldr	r3, =0xfff80000
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffffcccd
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	mov	r3, #0xa0
	add	r0, r2
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffff0000
	ldr	r3, =0x3333
	ldr	r1, [r7, #0xc]
	add	r2, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r10, r3
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	mov	r2, #0xc0
	lsl	r2, #11
	add	r0, r2
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	mov	r3, r10
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008db4

.thumb_func_start OvlFunc_926_2008e94
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Leb0:
	mov	r0, r5
	bl	__Func_80030f8
	ldr	r3, [r7, #0x10]
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r4
	mov	r2, r8
	add	r6, #1
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Leb0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	ldr	r3, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #13
	add	r3, r4
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x40]
	mov	r0, #0xe3
	bl	__Func_80f9080
	mov	r6, #0xc0
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x3333
	lsl	r6, #12
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	mov	r4, r8
	add	r2, r6
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	ldr	r3, =0xfff80000
	add	r0, r2
	ldr	r2, [r7, #0x10]
	mov	r10, r3
	mov	r6, #0x80
	ldr	r1, [r7, #0xc]
	add	r2, r10
	lsl	r6, #9
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #11
	ldr	r1, [r7, #0xc]
	add	r0, r4
	add	r2, r10
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008e94

.thumb_func_start OvlFunc_926_2008f80
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r2, [r0, #6]
	ldr	r0, =0xffffe000
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lfb4
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	b	.Lffa
.Lfb4:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lfd2
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	b	.Lffa
.Lfd2:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1002
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0xf
	lsl	r1, #8
.Lffa:
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L1018
.L1002:
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
.L1018:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008f80

.thumb_func_start OvlFunc_926_200902c
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r1, =0xcccc
	mov	r0, #0xf
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r5, =0x183a
	mov	r0, r5
	bl	__Func_8092b94
	cmp	r6, #0
	bne	.L10a4
	sub	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	ldr	r0, =0x18ae
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0xf
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
.L10a4:
	cmp	r6, #2
	bne	.L10bc
	ldr	r0, =0x18ac
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
.L10bc:
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	bl	OvlFunc_926_2008f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200902c

.thumb_func_start OvlFunc_926_2009160
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x13
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x187a
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0xf
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r2, =0x6666
	mov	r0, #0xf
	ldr	r1, =0xcccc
	bl	__Func_8092064
	bl	OvlFunc_926_2008f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	ldr	r0, =0x301
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009160

.thumb_func_start OvlFunc_926_20092e0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bls	.L130c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcs	.L130c
	bl	OvlFunc_926_2008bf4
	b	.L1310
.L130c:
	bl	OvlFunc_926_2008cd4
.L1310:
	ldr	r0, =0x898
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1320
	bl	OvlFunc_926_2009160
	b	.L1326
.L1320:
	mov	r0, #0
	bl	OvlFunc_926_200902c
.L1326:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_20092e0

.thumb_func_start OvlFunc_926_2009334
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.L1366
	bl	OvlFunc_926_2008e94
	b	.L1390
.L1366:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1378
	bl	OvlFunc_926_2008bf4
	b	.L1390
.L1378:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L138c
	bl	OvlFunc_926_2008db4
	b	.L1390
.L138c:
	bl	OvlFunc_926_2008cd4
.L1390:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #1
	bl	OvlFunc_926_200902c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009334

.thumb_func_start OvlFunc_926_20093b8
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.L13dc
	bl	OvlFunc_926_2008e94
	b	.L1406
.L13dc:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L13ee
	bl	OvlFunc_926_2008bf4
	b	.L1406
.L13ee:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1402
	bl	OvlFunc_926_2008db4
	b	.L1406
.L1402:
	bl	OvlFunc_926_2008cd4
.L1406:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0x12
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xd1
	bgt	.L144c
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L143a
	ldr	r0, =0x89b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1442
.L143a:
	mov	r0, #0
	bl	OvlFunc_926_200902c
	b	.L1446
.L1442:
	bl	OvlFunc_926_2009160
.L1446:
	bl	__Func_8091750
	b	.L1476
.L144c:
	ldr	r0, =0x89b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L145e
	mov	r0, #2
	bl	OvlFunc_926_200902c
	b	.L1472
.L145e:
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L146e
	bl	OvlFunc_926_2009494
	b	.L1472
.L146e:
	bl	OvlFunc_926_2009dbc
.L1472:
	bl	__Func_8091750
.L1476:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_20093b8

.thumb_func_start OvlFunc_926_2009494
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__Func_8079358
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0x183b
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_809335c
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x10
	mov	r1, #0xb0
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x9a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r2, #0xd
	ldr	r0, =.L477a
	mov	r1, #0x4e
	bl	__Func_8010560
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x10
	bl	__Func_8092064
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x9a
	mov	r2, #0x88
	strb	r3, [r0]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0x10
	mov	r2, #0x32
	bl	__Func_8093040
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x98
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x98
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r1, #0x8c
	mov	r2, #0x84
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x11
	bl	__Func_809218c
	mov	r0, #0x12
	bl	__Func_80923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__Func_80923c4
	mov	r0, #0x9f
	bl	__Func_80f9080
	ldr	r0, =.L4790
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x14
	b	.L18ac

	.pool_aligned

.L18ac:
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x11
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r0, #0x11
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_80923e4
	mov	r0, #0x11
	bl	__Func_8092924
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0xb8
	mov	r0, #0x12
	mov	r1, #0xf0
	bl	__Func_80921c4
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0xf8
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1c4a
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	b	.L1cb4
.L1c4a:
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1ce0
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
.L1cb4:
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x898
	bl	__Func_8079358
	b	.L1d12

	.pool_aligned

.L1ce0:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x899
	bl	__Func_8079358
.L1d12:
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_80924d4
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_809207c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009494

.thumb_func_start OvlFunc_926_2009d50
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x186e
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1d8c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x898
	bl	__Func_8079358
	bl	__Func_8091750
	b	.L1daa
.L1d8c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091750
.L1daa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009d50

.thumb_func_start OvlFunc_926_2009dbc
	push	{r5, lr}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0
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
	mov	r1, #1
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x1883
	bl	__Func_8092b94
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x90
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x12
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r0, #0xc
	mov	r1, #0x90
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x13
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0x13
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_80937b8
	mov	r0, #5
	bl	__Func_809163c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0x10
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0xf
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	b	.L2224

	.pool_aligned

.L2224:
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x78
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #5
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0xc
	bl	__Func_80923c4
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x1e
	mov	r0, #0xf
	bl	__Func_8092adc
	ldr	r0, =0x898
	bl	__Func_8079374
	ldr	r0, =0x89b
	bl	__Func_8079358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009dbc

.thumb_func_start OvlFunc_926_200a464
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1a58
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a464

.thumb_func_start OvlFunc_926_200a484
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x18ad
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	b	.L24f2
.L24ac:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L477a
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x99
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x98
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #4
	bl	__Func_8091e9c
	bl	__Func_8091750
.L24f2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a484

.thumb_func_start OvlFunc_926_200a508
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L2528
	mov	r0, #0xd
	bl	__Func_80b29a8
	b	.L2536
.L2528:
	ldr	r0, =0x1a1c
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
.L2536:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a508

.thumb_func_start OvlFunc_926_200a54c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x17df
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a54c

.thumb_func_start OvlFunc_926_200a574
	push	{lr}
	ldr	r1, =ewram_2000240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L258c
	ldr	r0, =.L4b90
	b	.L25a0
.L258c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L259e
	ldr	r0, =.L5184
	b	.L25a0
.L259e:
	ldr	r0, =.L4d40
.L25a0:
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_200a574

.thumb_func_start OvlFunc_926_200a5b8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r5, #7
	add	r6, sp, #0x10
	mov	r7, r0
	str	r5, [r6, #4]
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	and	r3, r5
	cmp	r3, #0
	bne	.L25de
	mov	r3, #5
	str	r3, [r6, #4]
.L25de:
	ldr	r3, =0xb333
	str	r3, [r6, #8]
	ldr	r3, =0xcccc
	str	r3, [r6, #0xc]
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r5, =iwram_3001e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r5]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r3, #8
	ldr	r0, [r7, #8]
	sub	r3, r2
	lsl	r3, #16
	ldr	r1, [r7, #0xc]
	add	r0, r3
	mov	r3, #0xc0
	lsl	r3, #13
	add	r1, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2640
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_8092950
	b	.L2648
.L2640:
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092950
.L2648:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a5b8

