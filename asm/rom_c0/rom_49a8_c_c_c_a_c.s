	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MakeLookMatrix  @ 0x08004fe4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	str	r0, [sp, #0x20]
	mov	r0, sp
	add	r0, #0x24
	str	r0, [sp, #0xc]
	mov	r4, r1
	mov	r9, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =DistSquared
	ldr	r1, [sp, #0xc]
	ldr	r2, =0x84000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, [sp, #0x20]
	ldr	r2, [r4]
	ldr	r3, [r1]
	sub	r2, r3
	str	r2, [sp, #0x1c]
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	sub	r2, r3
	str	r2, [sp, #0x18]
	ldr	r3, [r1, #8]
	ldr	r2, [r4, #8]
	sub	r2, r3
	str	r2, [sp, #0x14]
	ldr	r4, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	ldr	r0, [sp, #0x14]
	asr	r1, r2, #8
	asr	r3, r4, #8
	asr	r2, r0, #8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r2, r3
	mov	r0, r1
	bl	_call_via_r4
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r1, r0
	ldr	r0, =udivsi3_RAM
	mov	r11, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsr	r3, r0, #15
	neg	r3, r3
	ldr	r5, =Func_8000888
	ldr	r0, [sp, #0x1c]
	mov	r1, r3
	.call_via r5
	str	r0, [sp, #0x1c]
	mov	r1, r3
	ldr	r0, [sp, #0x18]
	.call_via r5
	str	r0, [sp, #0x18]
	mov	r1, r3
	ldr	r0, [sp, #0x14]
	.call_via r5
	ldr	r1, [sp, #0x1c]
	neg	r1, r1
	mov	r8, r1
	str	r0, [sp, #0x14]
	ldr	r0, [sp, #0x18]
	mov	r1, r0
	.call_via r5
	mov	r3, #0x80
	lsl	r3, #9
	sub	r0, r3, r0
	cmp	r0, #0
	ble	.L50a6
	bl	FastIntSqrtFP1616_RAM 
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsl	r3, r0, #1
.L50a6:
	ldr	r0, [sp, #0x14]
	mov	r1, r3
	.call_via r5
	str	r0, [sp, #0x10]
	mov	r1, r3
	mov	r0, r8
	.call_via r5
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [sp, #0x18]
	.call_via r5
	mov	r10, r0
	ldr	r1, [sp, #0x10]
	ldr	r0, [sp, #0x14]
	.call_via r5
	mov	r3, r0
	mov	r1, r8
	ldr	r0, [sp, #0x1c]
	.call_via r5
	sub	r6, r3, r0
	ldr	r1, [sp, #0x10]
	ldr	r0, [sp, #0x18]
	.call_via r5
	neg	r7, r0
	mov	r3, r6
	str	r7, [sp]
	str	r7, [sp, #4]
	mov	r1, r10
	mov	r2, r6
	ldr	r4, [sp, #0xc]
	mov	r0, r10
	bl	_call_via_r4
	bl	FastIntSqrtFP1616_RAM 
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsl	r3, r0, #1
	mov	r1, r3
	mov	r0, r10
	.call_via r5
	mov	r10, r0
	mov	r1, r3
	mov	r0, r6
	.call_via r5
	mov	r6, r0
	mov	r1, r3
	mov	r0, r7
	.call_via r5
	ldr	r1, [sp, #0x20]
	mov	r7, r0
	ldr	r1, [r1, #4]
	ldr	r0, [sp, #0x20]
	ldr	r2, [sp, #0x20]
	ldr	r0, [r0]
	str	r1, [sp, #8]
	ldr	r3, [sp, #0x10]
	ldr	r5, [r2, #8]
	mov	r11, r0
	mov	r4, r9
	mov	r0, #0
	mov	r1, r8
	str	r3, [r4]
	str	r0, [r4, #0xc]
	str	r1, [r4, #0x18]
	ldr	r1, [sp, #0x10]
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r2, r5
	mov	r3, r8
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	mov	r2, r10
	neg	r0, r0
	str	r0, [r1, #0x24]
	str	r6, [r1, #0x10]
	str	r7, [r1, #0x1c]
	str	r2, [r1, #4]
	ldr	r2, [sp, #8]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r1, r10
	mov	r3, r6
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	neg	r0, r0
	str	r0, [r1, #0x28]
	ldr	r2, [sp, #0x1c]
	str	r2, [r1, #8]
	ldr	r3, [sp, #0x18]
	str	r3, [r1, #0x14]
	ldr	r4, [sp, #0x14]
	str	r4, [r1, #0x20]
	ldr	r1, [sp, #0x1c]
	str	r5, [sp]
	str	r4, [sp, #4]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	neg	r0, r0
	str	r0, [r1, #0x2c]
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end MakeLookMatrix

