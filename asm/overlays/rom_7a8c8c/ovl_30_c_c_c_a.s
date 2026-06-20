	.include "macros.inc"

.thumb_func_start OvlFunc_922_2009c18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	mov	r9, sp
	mov	r11, r3
	ldr	r3, =.L2418
	mov	r6, r2
	mov	r2, r9
	mov	r8, r0
	mov	r10, r1
	ldmia	r3!, {r0, r1, r7}
	stmia	r2!, {r0, r1, r7}
	mov	r3, r6
	mov	r0, #0xde
	mov	r1, r4
	mov	r2, r5
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L1c56
	b	.L1d5a
.L1c56:
	mov	r1, r8
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	ldr	r7, [r6, #0x50]
	bl	__Actor_SetAnim
	mov	r3, r8
	and	r3, r5
	lsl	r5, r3, #2
	mov	r2, r9
	ldr	r1, [r2, r5]
	mov	r0, r6
	bl	__Actor_SetScript
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, r7
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r3, =OvlFunc_922_2009bdc
	str	r3, [r6, #0x6c]
	mov	r3, r11
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x2c]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x30]
	mov	r0, #0xd
	str	r3, [r6, #0x4c]
	str	r2, [r6, #0x30]
	str	r2, [r6, #0x34]
	neg	r0, r0
	ldrb	r2, [r7, #9]
	mov	r11, r0
	mov	r3, r11
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r7, #9]
	ldr	r3, =0xffff0000
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L1d5a
	mov	r2, r10
	cmp	r2, #0
	beq	.L1d5a
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L1cca
	ldr	r1, [r2, #4]
	mov	r0, r6
	bl	__Func_80929d8
.L1cca:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.L1cf6
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r10
	ldrb	r2, [r1]
	mov	r3, #3
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, r11
	lsl	r2, #2
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #9]
.L1cf6:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r8
	and	r2, r3
	cmp	r2, #0
	beq	.L1d0c
	mov	r7, r10
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L1d0c:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.L1d5a
	mov	r1, r9
	ldr	r5, [r1, r5]
	cmp	r2, #0
	beq	.L1d3c
	mov	r2, r10
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	_divsi3_RAM
	str	r0, [r6, #0x30]
	mov	r3, r10
	ldr	r0, [r3, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.L1d54
.L1d3c:
	mov	r7, r10
	ldr	r0, [r7, #0x10]
	ldr	r1, =0xffff0000
	add	r0, r1
	ldr	r1, [r5, #0xc]
	bl	_divsi3_RAM
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
.L1d54:
	bl	_divsi3_RAM
	str	r0, [r6, #0x34]
.L1d5a:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009c18

.thumb_func_start OvlFunc_922_2009d78
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #3
	and	r7, r3
	sub	sp, #0x28
	cmp	r7, #0
	bne	.L1dee
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x1cccc
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L1dac
	mov	r0, #0x88
	bl	__PlaySound
.L1dac:
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	ldr	r5, =0xffff0000
	lsl	r0, #16
	sub	r5, r0
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0xd0001
	mov	r0, #0x9a
	mov	r1, #0x80
	mov	r2, #0xde
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_922_2009c18
.L1dee:
	add	sp, #0x28
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009d78

.thumb_func_start OvlFunc_922_2009e08
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__PlaySound
	mov	r0, #0xb6
	bl	__PlaySound
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r3, #8
	mov	r5, #0
	mov	r8, r3
	mov	r7, #7
	mov	r6, #1
.L1e2e:
	ldr	r0, =0x204318
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #0
	bne	.L1e68
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #8
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
.L1e68:
	mov	r1, #1
	ldr	r0, =0x203108
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	add	r5, #1
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #3
	bls	.L1e2e
	mov	r0, #0x1e
	bl	__WaitFrames
	ldr	r5, =OvlFunc_922_2009d78
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x201090
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, #0x82
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0xe6
	bl	__Func_8078a08
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009e08

