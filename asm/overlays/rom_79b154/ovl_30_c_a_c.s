	.include "macros.inc"

.thumb_func_start OvlFunc_907_2008584
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L59a
	b	.L85c
.L59a:
	ldr	r0, =0x848
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L5a6
	b	.L85c
.L5a6:
	bl	__Func_80916b0
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xad
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x1070000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	ldr	r2, [r0, #8]
	cmp	r2, r3
	ble	.L60a
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xd
	bl	__Func_80937b8
	ldr	r0, =0x1775
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	b	.L63e
.L60a:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__Func_80937b8
	ldr	r0, =0x1775
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
.L63e:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x86
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	mov	r0, #0xe
	bl	__Func_8092064
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0x85
	mov	r2, #0xac
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x177a
	mov	r1, #1
	bl	__Func_801776c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc2
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xc2
	bl	__Func_8091a58
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xe
	bl	__Func_8092064
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0x83
	and	r5, r3
	mov	r2, #0x9c
	lsl	r1, #1
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	ldr	r5, =.L11c0
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	ldr	r0, =0x849
	bl	__Func_8079358
	bl	__Func_8091750
.L85c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008584

.thumb_func_start OvlFunc_907_2008890
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #1
	str	r3, [r1, r2]
	ldr	r3, =ewram_2000240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L8b0
	bl	OvlFunc_907_20088f0
	b	.L8d0
.L8b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L8c6
	bl	OvlFunc_907_2008ae0
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_907_2008ed8
	lsl	r1, #4
	bl	__StartTask
	b	.L8d0
.L8c6:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L8d0
	bl	OvlFunc_907_2008d10
.L8d0:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008890

.thumb_func_start OvlFunc_907_20088f0
	push	{lr}
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L920
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	b	.L936
.L920:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L936:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
	mov	r2, #0xe1
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L95e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L968
.L95e:
	cmp	r3, #9
	bne	.L968
	ldr	r0, =0x12f
	bl	__Func_8079374
.L968:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L990
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L990
	mov	r1, #0xf8
	mov	r2, #0xd8
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
.L990:
	bl	OvlFunc_907_20089cc
	ldr	r0, =0x84a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L9b0
	ldr	r0, =0x84b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L9b0
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
.L9b0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20088f0

.thumb_func_start OvlFunc_907_20089cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r9, r3
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	mov	r10, r3
	mov	r3, #0xc
	ldr	r6, [r0, #8]
	mov	r5, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r8, r3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	asr	r6, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0x10
	bne	.La4c
	cmp	r7, #0xd
	beq	.La60
.La4c:
	mov	r3, #0x10
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.La60:
	mov	r3, r9
	cmp	r3, #0x10
	bne	.Lace
	mov	r3, r10
	cmp	r3, #0xd
	bne	.Lace
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	cmp	r7, #0xd
	bne	.Lab2
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__Func_8092158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.Laca
.Lab2:
	mov	r1, #0x8f
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xda
	bl	__Func_8092158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
.Laca:
	bl	__Func_8091750
.Lace:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20089cc

.thumb_func_start OvlFunc_907_2008ae0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x845
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb8c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x38
	mov	r1, #0xf
	mov	r2, #0x28
	mov	r3, #0xf
	bl	__Func_8010424
	mov	r3, #0xa
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldr	r0, =0x849
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb72
	ldr	r0, =0x848
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb68
	b	.Lc92
.Lb68:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.Lb72:
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lc92
.Lb8c:
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_80923e4
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r6
	add	r2, #0x55
	strb	r5, [r2]
	ldr	r0, =0x881
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc80
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x10
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r1, #0x8e
	orr	r3, r5
	mov	r2, #0x9c
	strb	r3, [r0]
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #0x10
	bl	__Func_80923e4
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x8e
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r2, #16
	lsl	r1, #16
	bl	__Func_80923e4
	ldr	r2, [r6, #0x50]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r0, =0x848
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc5c
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	b	.Lc92
.Lc5c:
	mov	r1, #0xb0
	mov	r2, #0xc4
	lsl	r2, #16
	mov	r0, #0xb
	lsl	r1, #15
	bl	__Func_80923e4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r3, r7
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #4
	orr	r2, r1
	strb	r2, [r3]
	b	.Lc92
.Lc80:
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r6, #0xc]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lc92:
	bl	OvlFunc_907_2008cb4
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008ae0

.thumb_func_start OvlFunc_907_2008cb4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r8, r3
	ldr	r3, [r0, #0x10]
	ldr	r5, =.L1d28
	asr	r7, r3, #20
	mov	r6, #0
.Lcd0:
	ldrb	r3, [r5]
	ldrb	r2, [r5, #1]
	mov	r0, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	add	r6, #2
	bl	__Func_8010704
	add	r5, #2
	cmp	r6, #0x13
	bls	.Lcd0
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008cb4

.thumb_func_start OvlFunc_907_2008d10
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	bl	OvlFunc_907_2008fa0
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #3
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.Ld6e
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld6e
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r1, #0x80
	lsl	r1, #13
	ldr	r0, [r5, #8]
	str	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	bl	__Func_8091750
	mov	r0, #1
	bl	__Func_80030f8
.Ld6e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008d10

