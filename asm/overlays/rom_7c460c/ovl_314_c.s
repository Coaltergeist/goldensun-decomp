	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008fa0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x241
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008fa0

.thumb_func_start OvlFunc_939_2008ff0
	push	{r5, r6, lr}
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1000
	b	.L117a
.L1000:
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_80937b8
	ldr	r5, =0x2409
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
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
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #9
	lsl	r1, #10
	bl	__Func_8092064
	mov	r1, #4
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #0x23
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x1e
	ldr	r1, =0x103
	mov	r0, #8
	bl	__Func_80937b8
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80924d4
	add	r5, #3
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r3, #0xa
	ldrsh	r1, [r6, r3]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	sub	r1, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #0xa0
	mov	r2, #0xd8
	bl	__Func_809218c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0xa8
	mov	r2, #0xc8
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xa0
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #0
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_939_2009240
	lsl	r1, #4
	bl	__StartTask
.L117a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008ff0

.thumb_func_start OvlFunc_939_200918c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_200918c

.thumb_func_start OvlFunc_939_20091d0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x241
	ldr	r5, [r3]
	bl	__Func_8079374
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_8079374
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xff97ffff
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =0x87fffe
	cmp	r3, r2
	bhi	.L1218
	mov	r3, #0xa0
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	ble	.L1218
	mov	r2, #0xf8
	lsl	r2, #16
	cmp	r0, r2
	bge	.L1218
	ldr	r0, =OvlFunc_939_2009240
	bl	__StopTask
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1218:
	bl	OvlFunc_939_200918c
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20091d0

.thumb_func_start OvlFunc_939_2009240
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L128c
	ldr	r2, =0xff700000
	ldr	r3, [r0, #8]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bhi	.L128c
	mov	r3, #0xa8
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	blt	.L128c
	mov	r2, #0xb0
	lsl	r2, #16
	cmp	r0, r2
	bge	.L128c
	ldr	r0, =OvlFunc_939_2009240
	bl	__StopTask
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L128c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2009240

.thumb_func_start OvlFunc_939_20092a4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	mov	r8, r0
	cmp	r7, #0
	bne	.L130c
	bl	__Random
	mov	r3, #0x34
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #6
	mov	r5, r3
	add	r5, #0xe6
	mov	r0, r5
	bl	__Func_800231c
	add	r6, sp, #0x10
	cmp	r0, #0
	bge	.L12de
	add	r0, #3
.L12de:
	asr	r3, r0, #2
	mov	r0, r5
	str	r3, [r6]
	str	r7, [r6, #4]
	bl	__Func_8002322
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	str	r0, [r6, #8]
	mov	r3, r8
	ldr	r5, [r3, #8]
	ldr	r4, [r6, #4]
	ldr	r1, [r3, #0xc]
	ldr	r2, [r3, #0x10]
	ldr	r3, [r6]
	str	r0, [sp, #4]
	mov	r0, r5
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L130c:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20092a4

.thumb_func_start OvlFunc_939_200931c
	push	{r5, r6, lr}
	bl	__Func_80916b0
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x98
	mov	r2, #0xe0
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r1, #0xa8
	mov	r2, #0xe0
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r0, #8
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r2, #0x90
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x90
	lsl	r2, #1
	mov	r0, #9
	mov	r1, #0xa8
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0x94
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0xa0
	bl	__Func_8092128
	ldr	r6, =OvlFunc_939_20092a4
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__StartTask
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0x79
	bl	__Func_80f9080
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #0x79
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	mov	r1, #4
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x79
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, r6
	bl	__StopTask
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #11
	str	r5, [r0, #0x28]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r5, [r0, #0x2c]
	mov	r0, #1
	bl	__Func_809163c
	b	.L1480
.L147a:
	mov	r0, #1
	bl	__Func_809163c
.L1480:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L147a
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x7f
	bl	__Func_80f9080
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_20092a4
	bl	__StartTask
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x28]
	mov	r0, #1
	bl	__Func_809163c
	b	.L14da
.L14d4:
	mov	r0, #1
	bl	__Func_809163c
.L14da:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L14d4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =OvlFunc_939_20092a4
	bl	__StopTask
	mov	r0, #0x32
	bl	__Func_809163c
	ldr	r0, =0x2410
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0x80
	orr	r5, r3
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #9
	mov	r0, #8
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r2, #0xc8
	mov	r1, #0xb0
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_200931c

.thumb_func_start OvlFunc_939_20095bc
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8091dc8
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x92
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	bl	__Func_8097174
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x58
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x58
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x48
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0x90
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0x90
	mov	r1, #0x58
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20095bc

.thumb_func_start OvlFunc_939_2009668
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L16b4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_939_20085f0
	ldr	r0, =0xfd1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L169e
	mov	r0, #0x14
	bl	OvlFunc_939_2009840
.L169e:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16ae
	mov	r1, #0
	bl	__Func_800c528
.L16ae:
	ldr	r0, =0x201
	bl	__Func_8079358
.L16b4:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L1778
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x242
	mov	r1, #0xe1
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L16f6
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L16f6
	bl	OvlFunc_939_200931c
.L16f6:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1714
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1714
	bl	OvlFunc_939_20095bc
.L1714:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1732
	ldr	r0, =0x94d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1732
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_939_2008ac4
	lsl	r1, #4
	bl	__StartTask
.L1732:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_2009240
	bl	__StartTask
	ldr	r0, =0x944
	bl	__Func_8079374
	ldr	r0, =0x945
	bl	__Func_8079374
	ldr	r0, =0x946
	bl	__Func_8079374
	ldr	r0, =0x947
	bl	__Func_8079374
	ldr	r0, =0x948
	bl	__Func_8079374
	ldr	r0, =0x943
	bl	__Func_8079374
	ldr	r0, =0x949
	bl	__Func_8079374
	ldr	r0, =0x94a
	bl	__Func_8079374
	ldr	r0, =0x94b
	bl	__Func_8079374
	ldr	r0, =0x94c
	bl	__Func_8079374
.L1778:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2009668

.thumb_func_start OvlFunc_939_20097d8
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L17ec
	neg	r5, r5
.L17ec:
	ldr	r0, [r6, #0x30]
	bl	__Func_800231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_800231c
	cmp	r0, #0
	bge	.L1812
	add	r0, #7
.L1812:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_20097d8

.thumb_func_start OvlFunc_939_2009840
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L18a4
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L18a4:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_939_20097d8
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2009840

	.section .data
	.global .L1bec
	.global gOvl_02009d3c
	.global .L1dcc
	.global gScript_918__02009e04
	.global gOvl_02009e14
	.global .L1f64
	.global .L1fc4
	.global .L21bc
	.global .L23b4
	.global .L250c

.L1bec:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1bec, (0x1d3c-0x1bec)
gOvl_02009d3c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1d3c, (0x1dcc-0x1d3c)
.L1dcc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1dcc, (0x1e04-0x1dcc)
gScript_918__02009e04:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e04, (0x1e14-0x1e04)
gOvl_02009e14:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e14, (0x1f64-0x1e14)
.L1f64:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1f64, (0x1fc4-0x1f64)
.L1fc4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1fc4, (0x21bc-0x1fc4)
.L21bc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x21bc, (0x23b4-0x21bc)
.L23b4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x23b4, (0x250c-0x23b4)
.L250c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x250c
