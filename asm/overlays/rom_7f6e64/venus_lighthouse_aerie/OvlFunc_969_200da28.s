	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200da28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e70
	mov	r10, r0
	ldr	r5, [r3]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	lsl	r3, #16
	add	r5, #0xe8
	mov	r8, r3
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x81
	bgt	.Lm969_5aac
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm969_5a7e
	mov	r1, #0x98
	mov	r2, #0xa4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	b	.Lm969_5a94
.Lm969_5a7e:
	mov	r1, #0x98
	mov	r2, #0xab
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, =0x14ccc
.Lm969_5a94:
	str	r5, [r0, #0x18]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	b	.Lm969_5ab6

	.pool_aligned

.Lm969_5aac:
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm969_5ab6:
	mov	r1, r10
	cmp	r1, #0
	beq	.Lm969_5b80
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.Lm969_5b80
	mov	r0, r10
	ldr	r2, [r0, #0xc]
	ldr	r1, [r1, #8]
	mov	r3, #0x80
	lsl	r3, #12
	add	r2, r8
	add	r1, r3
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__CreateActor
	mov	r1, #0xc0
	lsl	r1, #11
	mov	r7, r0
	mov	r0, r8
	bl	_divsi3_RAM
	mov	r8, r0
	mov	r1, r8
	lsl	r1, #16
	mov	r8, r1
	cmp	r7, #0
	beq	.Lm969_5b80
	ldr	r1, =gScript_969__0200e734
	mov	r0, r7
	ldr	r5, [r7, #0x50]
	bl	__Actor_SetScript
	mov	r1, #5
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	and	r3, r0
	add	r2, #0x64
	ldr	r0, .Lm969_5b5c	@ 0
	strh	r3, [r2]
	mov	r3, r7
	mov	r9, r0
	add	r3, #0x66
	ldr	r0, =0xfffff
	strh	r6, [r3]
	mov	r2, r8
	ldr	r3, =OvlFunc_969_200db90
	mov	r1, r10
	and	r0, r2
	str	r1, [r7, #0x68]
	str	r3, [r7, #0x6c]
	asr	r0, #4
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r5
	add	r3, #0x26
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, r10
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	b	.Lm969_5b74

	.align	2, 0
.Lm969_5b5c:
	.word	0
	.pool

.Lm969_5b74:
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
.Lm969_5b80:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200da28

