	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80052f4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =0x54
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r6, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8002298
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80052f4

.thumb_func_start DecompressLZ
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x2c4
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8002544
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r5, r0
	mov	r0, r6
	bl	free
	mov	r0, r5
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end DecompressLZ

.thumb_func_start Func_8005394
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x4ec
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8002808
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r5, r0
	mov	r0, r6
	bl	free
	mov	r0, r5
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005394

.thumb_func_start Func_80053e8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x258
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8001b70
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r5, r0
	mov	r0, r6
	bl	free
	mov	r0, r5
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80053e8

.thumb_func_start Func_800543c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x84
	lsr	r2, #2
	mov	r6, r1
	mov	r14, r3
	mov	r1, sp
	lsl	r3, r2, #2
	mov	r4, #0x84
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8001fb8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800543c

.thumb_func_start Func_8005490
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x80
	lsr	r2, #2
	mov	r6, r1
	mov	r14, r3
	mov	r1, sp
	lsl	r3, r2, #2
	mov	r4, #0x84
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8001f38
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8005490

.thumb_func_start Func_80054e4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x50
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r6, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8001ea8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80054e4

.thumb_func_start Func_8005534
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x40
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r6, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8001ef8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8005534

.thumb_func_start Func_8005584
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0xd4
	lsr	r2, #2
	mov	r6, r1
	mov	r14, r3
	mov	r1, sp
	lsl	r3, r2, #2
	mov	r4, #0x84
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_80021c4
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8005584

.thumb_func_start Func_80055d8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0xd0
	lsr	r2, #2
	mov	r6, r1
	mov	r14, r3
	mov	r1, sp
	lsl	r3, r2, #2
	mov	r4, #0x84
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_80020f4
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80055d8

.thumb_func_start Func_800562c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x5c
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r6, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_800203c
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800562c

.thumb_func_start Func_800567c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r12, r2
	ldr	r2, =0x5c
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r6, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r7, sp
	mov	r5, r0
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8002098
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, r6
	mov	r2, r12
	bl	_call_via_sp
	mov	sp, r8
	mov	sp, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800567c
