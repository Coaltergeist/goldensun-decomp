	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aad10  @ 0x080aad10
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xc2
	ldr	r0, [r3]
	lsl	r2, #1
	add	r3, r0, r2
	ldr	r3, [r3]
	sub	sp, #8
	mov	r8, r3
	mov	r3, #0xf
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r3, #0x1e
	mov	r2, #5
	add	r0, #0x30
	bl	Func_80a10d0
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r8
	mov	r2, #0x80
	ldr	r6, =Func_8001af8
	ldr	r1, =0x6004000
	lsl	r2, #6
	add	r0, #0xa8
	bl	_call_via_r6
	ldr	r0, =0x20a8
	ldr	r1, =0x5000080
	add	r0, r8
	mov	r2, #0x80
	bl	_call_via_r6
	mov	r1, #0x80
	ldr	r5, =Func_80008d8
	lsl	r1, #6
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r2, =0x55555555
	ldr	r0, =0x5000080
	bl	_call_via_r5
	ldr	r0, =0x6005000
	bl	_Func_8021a18
	ldr	r1, =Data_af26c
	mov	r2, #0x20
	ldr	r0, =0x60052c0
	bl	_call_via_r6
	bl	GetSpritePalette
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =0x50001e8
	ldr	r2, =0x50000bc
	ldrh	r3, [r5]
	ldr	r0, =0x50001e0
	strh	r3, [r2]
	add	r1, #0x40
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #8
	bl	Func_80aac84
	ldrh	r3, [r5]
	ldr	r2, =0x50000e8
	strh	r3, [r2]
	ldrh	r3, [r5]
	sub	r2, #0x20
	strh	r3, [r2]
	mov	r0, r8
	bl	Func_80aafb8
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80aad10

