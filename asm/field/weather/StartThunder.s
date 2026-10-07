	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartThunder  @ 0x08095160
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001ed0
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850007e2
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	ldr	r0, =0x10003
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #4
	add	r6, r5, r3
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	ldr	r0, =0x10005
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #5
	add	r2, r5, r3
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0xc
	bl	Func_809088c
	mov	r3, #0xe0
	lsl	r3, #4
	add	r8, r3
	mov	r2, r8
	mov	r0, r5
	mov	r1, #0
	mov	r3, #1
	bl	Func_8090a5c
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0xc8
	add	r5, r3
	mov	r3, #1
	strh	r3, [r5]
	lsl	r1, #4
	ldr	r0, =Task_Thunder
	bl	StartTask
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end StartThunder

