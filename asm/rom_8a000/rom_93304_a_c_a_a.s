	.include "macros.inc"

.thumb_func_start Func_80935d4  @ 0x080935d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r7, [r3]
	bl	galloc_ewram
	mov	r1, #0xf0
	lsl	r1, #1
	add	r0, r1
	ldr	r3, [r0]
	add	r3, #0x5b
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.L9367c
	mov	r2, #0xd6
	lsl	r2, #2
	add	r2, r7
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	mov	r8, r2
	cmp	r3, #0
	beq	.L9367c
	mov	r1, #0xd4
	mov	r2, #0xd5
	lsl	r1, #2
	lsl	r2, #2
	add	r6, r7, r1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldr	r3, [r6]
	sub	r2, r3
	ldr	r3, =0x35a
	add	r5, r7, r3
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	lsl	r3, #16
	asr	r3, #16
	mov	r0, r3
	mul	r0, r2
	mov	r3, r8
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	__divsi3
	mov	r2, r0
	mov	r0, #0xd2
	ldr	r1, [r6]
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	add	r1, r2
	.call_via r4
	mov	r1, #0xd3
	lsl	r1, #2
	add	r3, r7, r1
	str	r0, [r3]
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r7, r0
	ldrh	r3, [r3]
	ldr	r2, =iwram_3001af4
	add	r3, #1
	str	r3, [r2]
	mov	r1, #0
	ldrsh	r2, [r5, r1]
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	bne	.L9367c
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	ldr	r0, =Func_80935d4
	bl	StopTask
.L9367c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80935d4

.thumb_func_start Func_80936a0  @ 0x080936a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	ldr	r5, [r3]
	bl	galloc_ewram
	mov	r1, #0xcf
	lsl	r1, #1
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L936f4
	mov	r1, #0x80
	ldr	r3, =Func_80008ac
	lsl	r1, #9
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #0xd4
	lsl	r3, #2
	add	r1, r5, r3
	add	r3, #4
	add	r2, r5, r3
	ldr	r3, [r2]
	str	r3, [r1]
	mov	r1, #0xd6
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	str	r0, [r2]
	strh	r7, [r3]
	mov	r2, #0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =Func_80935d4
	ldr	r1, =0xc94
	bl	StartTask
.L936f4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80936a0

.thumb_func_start Func_8093710  @ 0x08093710
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r6, [r3]
	bl	galloc_ewram
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r0, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L93758
	mov	r2, #0xd6
	lsl	r2, #2
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #0
	beq	.L93758
	mov	r3, #0xd6
	lsl	r3, #2
	add	r6, r3
.L93742:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x12b
	add	r5, #1
	cmp	r5, r2
	bgt	.L93758
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L93742
.L93758:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8093710

