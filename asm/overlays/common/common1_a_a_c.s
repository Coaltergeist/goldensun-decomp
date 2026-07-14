	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1354
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L14
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =.L32
	lsr	r3, #5
	ldr	r0, =.L41
	mov	r10, r3
	mov	r3, #0
	ldrsh	r7, [r2, r3]
	mov	r11, r0
	mov	r9, r2
	cmp	r7, #0
	beq	.L13e8
	ldr	r3, =.L17
	ldrh	r5, [r3]
	add	r5, #1
	strh	r5, [r3]
	ldr	r0, =.L45
	ldr	r1, =.L38
	ldr	r3, =.L21
	mov	r8, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	lsl	r5, #16
	sub	r2, r3
	asr	r5, #16
	ldrh	r6, [r1]
	mov	r0, r5
	mul	r0, r2
	mov	r1, r7
	bl	_divsi3_RAM
	ldr	r2, =.L29
	add	r6, r0
	mov	r1, r8
	strh	r6, [r1]
	mov	r8, r2
	ldr	r3, =.L48
	ldr	r2, =.L42
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldrh	r6, [r2]
	mov	r1, #0
	ldrsh	r2, [r2, r1]
	sub	r3, r2
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	mov	r2, r8
	add	r6, r0
	strh	r6, [r2]
	cmp	r5, r7
	blt	.L13e2
	ldr	r3, .L1414	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L13e2:
	ldr	r2, =.L26
	ldr	r3, .L1414	@ 0
	strh	r3, [r2]
.L13e8:
	ldr	r2, =.L26
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0xd
	bgt	.L1474
	ldr	r3, =.L45
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L29
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, r11
	mov	r3, #0
	stmia	r0!, {r3}
	sub	r1, #8
	ldr	r3, =.L19
	lsl	r1, #16
	b	.L144c

	.align	2, 0
.L1414:
	.word	0
	.pool

.L144c:
	sub	r2, #8
	orr	r2, r1
	mov	r4, #0x80
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r4, #23
	lsl	r3, #28
	orr	r2, r4
	orr	r2, r3
	mov	r3, #0x80
	stmia	r0!, {r2}
	lsl	r3, #3
	mov	r2, r10
	orr	r2, r3
	str	r2, [r0]
	mov	r1, #0xff
	mov	r0, r11
	bl	__Func_8003dec
	b	.L147c
.L1474:
	cmp	r3, #0x13
	ble	.L147c
	ldr	r3, =0
	strh	r3, [r2]
.L147c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1354
