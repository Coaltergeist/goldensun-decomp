	.include "macros.inc"

.thumb_func_start Func_8091dc8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_808fefc
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091dc8

.thumb_func_start Func_8091df4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_80901c0
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091df4

.thumb_func_start Func_8091e20
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_80030f8
	pop	{r0}
	bx	r0
.func_end Func_8091e20

.thumb_func_start Func_8091e3c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe0
	strh	r2, [r3]
	ldr	r2, =ewram_2000240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_8091e3c

.thumb_func_start Func_8091e6c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe2
	strh	r2, [r3]
	ldr	r2, =ewram_2000240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe3
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_8091e6c

